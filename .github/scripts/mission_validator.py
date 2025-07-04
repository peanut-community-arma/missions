import os
import csv
import argparse
from collections import defaultdict

def get_mission_folder(file_path, root_dir):
    """Identifies the mission folder path relative to the root directory."""
    normalized_file_path = os.path.normpath(file_path)
    normalized_root_dir = os.path.normpath(root_dir)

    if not normalized_file_path.startswith(normalized_root_dir):
        return None

    relative_path = os.path.relpath(normalized_file_path, normalized_root_dir)
    parts = relative_path.split(os.sep)
    
    if len(parts) > 1:
        # The mission folder is the first directory in the relative path
        return os.path.join(normalized_root_dir, parts[0])
    return None

def find_invalid_classes(missions_dir, invalid_classes_file):
    invalid_classes = set()
    with open(invalid_classes_file, 'r') as f:
        reader = csv.reader(f)
        next(reader)  # Skip header
        for row in reader:
            if row: # Ensure row is not empty
                invalid_classes.add(row[0])

    error_report = defaultdict(lambda: defaultdict(list))
    scanned_missions = set()

    for item in os.listdir(missions_dir):
        item_path = os.path.join(missions_dir, item)
        if os.path.isdir(item_path) and not item.startswith('.'):
            scanned_missions.add(item_path)

    for mission_folder in scanned_missions:
        for root, dirs, files in os.walk(mission_folder):
            for file in files:
                if file.endswith((".sqf", ".sqm", "description.ext")):
                    file_path = os.path.join(root, file)
                    try:
                        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                            content = f.read()
                            for invalid_class in invalid_classes:
                                if invalid_class in content:
                                    error_report[mission_folder][file_path].append(invalid_class)
                    except Exception as e:
                        print(f"Error reading {file_path}: {e}")

    return error_report, scanned_missions

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Validate Arma 3 mission files for invalid class names.")
    parser.add_argument("missions_dir", help="Path to the directory containing the missions.")
    parser.add_argument("invalid_classes_csv", help="Path to the CSV file with invalid class names.")
    args = parser.parse_args()

    error_report, scanned_missions = find_invalid_classes(args.missions_dir, args.invalid_classes_csv)
    
    failed_missions = set(error_report.keys())
    passed_missions = scanned_missions - failed_missions

    print("--- Mission Validation Report ---")

    if failed_missions:
        print("\n==============================")
        print("     FAILED MISSIONS")
        print("==============================")
        for mission_folder in sorted(list(failed_missions)):
            mission_name = os.path.basename(mission_folder)
            print(f"\n--- Mission: {mission_name} ---")
            files = error_report[mission_folder]
            for file_path, classes in sorted(files.items()):
                relative_file_path = os.path.relpath(file_path, mission_folder)
                print(f"  File: {relative_file_path}")
                for invalid_class in sorted(classes):
                    print(f"    - Found invalid class: {invalid_class}")
    
    if passed_missions:
        print("\n==============================")
        print("     PASSED MISSIONS")
        print("==============================")
        for mission_folder in sorted(list(passed_missions)):
            print(f"- {os.path.basename(mission_folder)}")

    print("\n==============================")
    print("           SUMMARY")
    print("==============================")
    print(f"PASSED: {len(passed_missions)}")
    print(f"FAILED: {len(failed_missions)}")
    print(f"TOTAL:  {len(scanned_missions)}")
    print("==============================\n")

    if failed_missions:
        print("--- Validation Failed ---")
        exit(1)
    else:
        print("--- All missions validated successfully! ---")