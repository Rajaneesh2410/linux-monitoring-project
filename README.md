# Linux Server Monitoring & Automation

## Project Overview
A Linux system monitoring and automation project built using Bash scripting and Cron. The script collects basic system health information and stores timestamped reports in a log file.

## Technologies Used
- Ubuntu Linux (WSL)
- Bash Scripting
- Cron
- Linux Commands
- Git and GitHub

## Features
- Monitors CPU load using `uptime`.
- Monitors memory utilization using `free -h`.
- Checks disk utilization using `df -h`.
- Generates a warning when root filesystem disk usage reaches 80%.
- Stores monitoring reports with timestamps.
- Automates monitoring every 5 minutes using Cron.

## Project Structure

```text
linux-monitoring-project/
├── monitor.sh
├── README.md
└── logs/
    └── system-monitor.log
```

## Setup and Usage

Clone the repository:

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd linux-monitoring-project
```

Make the script executable:

```bash
chmod +x monitor.sh
```

Run the monitoring script:

```bash
./monitor.sh
```

View the monitoring report:

```bash
tail -n 25 logs/system-monitor.log
```

## Cron Scheduling

To run the monitoring script automatically every 5 minutes:

```bash
crontab -e
```

Add:

```bash
*/5 * * * * /home/code/linux-monitoring-project/monitor.sh
```

Verify the scheduled task:

```bash
crontab -l
```

## Learning Outcomes
- Practiced Linux system monitoring commands.
- Developed Bash scripting skills.
- Automated recurring tasks using Cron.
- Implemented basic disk usage threshold alerts and log management.

## Author
Rajaneesh B S
