import os
import csv
import argparse

def find_invalid_classes(missions_dir, invalid_classes_file):
    invalid_classes = set()
    with open(invalid_classes_file, 'r') as f:
        reader = csv.reader(f)
        next(reader)  # Skip header
        for row in reader:
            invalid_classes.add(row[0])

    error_report = {}

    for root, dirs, files in os.walk(missions_dir):
        # Exclude .github directory from search
        if '.github' in dirs:
            dirs.remove('.github')

        for file in files:
            if file.endswith((".sqf", ".sqm", "description.ext")):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                        for invalid_class in invalid_classes:
                            if invalid_class in content:
                                if file_path not in error_report:
                                    error_report[file_path] = []
                                error_report[file_path].append(invalid_class)
                except Exception as e:
                    print(f"Error reading {file_path}: {e}")

    return error_report

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Validate Arma 3 mission files for invalid class names.")
    parser.add_argument("missions_dir", help="Path to the directory containing the missions.")
    parser.add_argument("invalid_classes_csv", help="Path to the CSV file with invalid class names.")
    args = parser.parse_args()

    report = find_invalid_classes(args.missions_dir, args.invalid_classes_csv)

    if report:
        print("--- Invalid Classes Found ---")
        for file_path, classes in report.items():
            print(f"\nFile: {file_path}")
            for invalid_class in classes:
                print(f"  - Found invalid class: {invalid_class}")
        print("\n--- Validation Failed ---")
        exit(1) # Exit with a non-zero status code to fail the GitHub Action
    else:
        print("--- All missions validated successfully! ---")