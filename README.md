# 🐧 Bash DevOps Scripts

This repository contains a modular collection of Bash scripts designed to help automate common tasks in a DevOps environment. Each folder represents a different topic or real-world use case.

Whether you're just starting out with Bash or building real automation pipelines, this repo is structured to grow with your skills.

---

## 📁 Module Overview

| Module                                    | Description                                                           |
|-------------------------------------------|-----------------------------------------------------------------------|
| [1_basics](./1_basics/README.md)        | Learn Bash fundamentals (variables, input, conditionals, I/O)        |
| [2_file_process](./2_file_process/README.md)  | Automate file cleanup, monitor CPU/memory, use signal traps     |
| [3_text_processing](./3_text_processing/README.md) | Extract and transform data using `awk`, `sed`, and `grep`        |
| [4_cron_jobs](./4_cron_jobs/README.md)        | Schedule tasks using `cron`; backups and system reports         |
| [5_devops_integration](./5_devops_integration/README.md) | Use Bash with Docker, AWS CLI, Terraform                     |
| [6_projects](./6_projects/README.md)          | Real-world DevOps automation projects                            |

---

> 📌 **Note:** Modules 3–6 are under development and will be added incrementally.

---

## ✅ Requirements

- Linux/macOS terminal or Git Bash/WSL for Windows
- Bash 4.0+ installed
- Optional for later modules:
  - `docker`, `kubectl`, `aws`, `terraform`, `jq`, etc.

---

## 🚀 Getting Started

```bash
# Clone the repository
git clone https://github.com/sky2d2/bash-devops.git
cd bash-devops

# Navigate to a module
cd 01_basics
chmod +x *.sh
./hello.sh
