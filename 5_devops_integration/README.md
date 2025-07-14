# 5_devops_integration

This module demonstrates how Bash scripting can be integrated with key DevOps tools such as Docker, AWS CLI, and Terraform. These scripts show how to automate infrastructure monitoring, backups, and provisioning workflows.

---

## 📜 Scripts

### 🐳 `docker_healthcheck.sh`
Checks if a specified Docker container is running. If it is stopped, the script attempts to restart it automatically.

### ☁️ `aws_s3_backup.sh`
Uses AWS CLI to synchronize a local folder to an S3 bucket for backups or storage.

### 🌍 `terraform_wrapper.sh`
Wraps `terraform init` and `terraform apply` commands with interactive prompts and logging for safer automation.

---

## 🧪 Usage

### ✅ Make scripts executable

```bash
chmod +x *.sh
