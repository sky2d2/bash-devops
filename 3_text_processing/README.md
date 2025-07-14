# 3_text_processing

This module introduces key text manipulation tools used in Bash: `grep`, `sed`, `awk`, and `cut`. These scripts are ideal for log analysis, environment file processing, and transforming raw text data.

---

## 📜 Scripts

### 🔹 `extract_ips.sh`
Extracts all unique IP addresses from a log file using `grep` and `awk`.

### 🔹 `sed_replace_env.sh`
Replaces specific key-value pairs in `.env` or config-style files using `sed`.

### 🔹 `log_to_csv.sh`
Parses structured logs (e.g., Apache/Nginx) and converts key parts into CSV.

---

## 🧪 Usage

```bash
chmod +x *.sh
./extract_ips.sh access.log
./sed_replace_env.sh .env DB_HOST localhost
./log_to_csv.sh nginx.log
