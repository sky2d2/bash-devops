# 🕒 Cron Guide for Beginners

This guide is a simple introduction to `cron`, the time-based job scheduler used in Unix-like systems. It helps you automate Bash scripts for recurring tasks like backups, monitoring, and cleanups.

---

## 📌 What is Cron?

`cron` is a Linux utility used to **schedule tasks automatically** at fixed times, dates, or intervals.

Some real-world use cases:
- 📦 Back up files every night
- 📊 Generate system health reports every morning
- ♻️ Clean up temp directories once a week

---

## 🧠 Cron Syntax Overview

Each line in a `crontab` file follows this format:

```cron
* * * * * /path/to/your/script.sh
│ │ │ │ │
│ │ │ │ └── Day of the week (0–7) → Sunday = 0 or 7
│ │ │ └──── Month (1–12)
│ │ └────── Day of month (1–31)
│ └──────── Hour (0–23)
└────────── Minute (0–59)
