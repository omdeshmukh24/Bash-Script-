# System Monitor Dashboard Script (`monitor.sh`)

This script is designed to display key system resource information in a simple, real-time dashboard format. It continuously refreshes every 2 seconds and provides insights into CPU, memory, disk usage, and running processes.

---

##  Features

-  Hostname and system uptime
-  CPU load average (1m, 5m, 15m)
- Memory (RAM) and Swap usage
-  Disk space usage (root partition)
-  Active TCP network connections
-  Top 5 processes by CPU and memory usage

---

##  How to Use

1. Open your Linux terminal.
2. Clone/download the script file.
3. Make it executable:
   ```bash
   chmod +x monitor.sh

# Security Audit and Hardening Script

This script (`secure.sh`) performs a basic security audit on a Linux system and prints useful system information for hardening and inspection.

###  File
- `secure.sh`

###  Features
- Lists local users and groups
- Detects users with root access (UID 0)
- Finds world-writable files
- Finds files with SUID/SGID permissions
- Displays running services and open ports
- Shows IPv6 status
- Shows public and private IP addresses
- Prints last 5 failed SSH login attempts

###  How to Run

1. Make the script executable:
   ```bash
   chmod +x secure.sh
