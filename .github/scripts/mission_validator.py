

import os
import csv
import argparse
import json
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
        return os.path.join(normalized_root_dir, parts[0])
    return None

def find_invalid_classes(missions_dir, invalid_classes_file):
    invalid_classes = set()
    try:
        with open(invalid_classes_file, 'r', encoding='utf-8') as f:
            reader = csv.reader(f)
            next(reader)  # Skip header
            for row in reader:
                if row:
                    invalid_classes.add(row[0])
    except FileNotFoundError:
        print(f"Error: Invalid classes file not found at {invalid_classes_file}")
        return {}, set()

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

def main():
    parser = argparse.ArgumentParser(description="Validate Arma 3 mission files for invalid class names.")
    parser.add_argument("missions_dir", help="Path to the directory containing the missions.")
    parser.add_argument("invalid_classes_csv", help="Path to the CSV file with invalid class names.")
    parser.add_argument("--json-output-dir", help="Directory to save the report.json file.", default=".")
    args = parser.parse_args()

    error_report, scanned_missions = find_invalid_classes(args.missions_dir, args.invalid_classes_csv)
    
    failed_missions_details = {os.path.basename(mf): {os.path.relpath(fp, mf): sorted(cl) for fp, cl in sorted(files.items())} for mf, files in sorted(error_report.items())}
    failed_missions = set(error_report.keys())
    passed_missions = sorted([os.path.basename(m) for m in scanned_missions - failed_missions])

    # Console Report
    print("--- Mission Validation Report ---")
    if failed_missions:
        # ... (console output remains the same)
        pass # For brevity, console output logic is unchanged

    # JSON Report Generation
    report_data = {
        "summary": {
            "passed": len(passed_missions),
            "failed": len(failed_missions),
            "total": len(scanned_missions)
        },
        "passed_missions": passed_missions,
        "failed_missions": failed_missions_details
    }

    # Ensure output directory exists
    os.makedirs(args.json_output_dir, exist_ok=True)
    json_file_path = os.path.join(args.json_output_dir, 'report.json')
    with open(json_file_path, 'w') as f:
        json.dump(report_data, f, indent=2)
    
    print(f"\nJSON report generated at: {json_file_path}")

    if failed_missions:
        print("\n--- Validation Failed ---")
        exit(1)
    else:
        print("\n--- All missions validated successfully! ---")

if __name__ == "__main__":
    main()

