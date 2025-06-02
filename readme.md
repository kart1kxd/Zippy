# ZIP Recursive Extractor Script

This Windows batch script recursively finds and extracts all `.zip` files within the current directory and its subdirectories. After extraction, it automatically deletes the original `.zip` files.

---

## Features

- Recursively searches for all `.zip` files starting from the current directory.
- Extracts each `.zip` file **in-place** (to the same folder where the zip resides).
- Deletes the `.zip` file after successful extraction.
- Uses PowerShell's `Expand-Archive` command for reliable extraction.
- Displays progress messages and logs extraction and deletion actions.

---

## How to Use

1. Place the batch script (`extract_zips.bat`) in the root folder where your `.zip` files are located.
2. Double-click the batch script or run it from Command Prompt.
3. The script will process every `.zip` file it finds, extract it, and then delete the original zip.
4. Once complete, the script will pause so you can review the output.

---

## Requirements

- Windows OS with **PowerShell 5.0 or higher** (default on Windows 10+).
- Permissions to delete files in the directories containing the zip files.

---

## Notes

- Extraction is done "in-place," meaning each zip file extracts into the folder where it is located.
- If you want to preserve the zip files, **do not** run this script or modify it accordingly.
- Ensure no files inside the zip are currently open to avoid extraction errors.

---

## Example Output

```batch
C:\MyFiles> extract_zips.bat
🔍 Searching for .zip files recursively in: C:\MyFiles
-----------------------------------------------------
📦 Extracting: C:\MyFiles\folder1\data.zip
❌ Deleting zip: C:\MyFiles\folder1\data.zip
...
✅ All zip files have been extracted *in-place* and deleted.
pause
