# Integrity Checker 🛡️

A simple, lightweight, and effective File Integrity Monitoring (FIM) tool written in Bash. 

This script uses the robust **SHA-512** hashing algorithm to generate file signatures and verify their integrity, instantly detecting any unauthorized modifications or data corruption.

## 🚀 Features

* **Secure Hashing:** Generates a SHA-512 hash for any given file and stores it securely (read-only permissions).
* **Integrity Verification:** Compares the current file state against the stored hash to detect tampering.
* **Visual Alerts:** Colored terminal output for clear, immediate feedback (Green for Success, Red for Critical Alerts).

## 🛠️ Usage

### 1. Make the script executable
Before running the script, grant it execution permissions:
```bash
chmod +x integrity_checker.sh

### 2. Generate a hash (Mode 1)
To create an initial signature for a file, run the script with argument 1 followed by the filename:
 ./integrity_checker.sh 1 <filename>
(This will generate a hash.txt file containing the SHA-512 signature).

### 3. Verify file integrity (Mode 2)
To check if the file has been modified since the hash was generated, run the script with argument 2:
./integrity_checker.sh 2 <filename>
