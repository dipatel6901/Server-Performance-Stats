# 📊 Server Performance Stats Analyzer (`server-stats.sh`)

A simple and portable Bash script to monitor basic server performance statistics. It provides an overview of system usage including CPU, memory, disk space, and top resource-consuming processes.

---

## 🚀 Features

- ✅ Total CPU usage (as percentage)
- ✅ Total memory usage (used, free, percentage)
- ✅ Total disk usage (used, available, percentage)
- ✅ Top 5 processes by CPU usage
- ✅ Top 5 processes by memory usage

**Stretch Goals (Optional Add-ons):**
- ℹ️ OS version and kernel details
- ⏱️ System uptime
- 📈 Load average
- 👤 Number of logged-in users
- 🔐 Failed login attempts (requires root for some systems)

---

## 🛠️ Requirements

Works on most Linux distributions with standard utilities installed:
- `bash`
- `top`
- `free`
- `df`
- `ps`
- `awk`, `grep`, `who`, `uptime`

If needed, install missing packages:
```bash
sudo apt install procps coreutils util-linux -y


📦 Installation
Clone or download this repository.

Make the script executable:
    chmod +x server-stats.sh

▶️ Usage
Simply run the
    ./server-stats.sh

📄 License
This project is open-source and free to use under the MIT License.

🔗 RoadMap.sh Link 
    https://roadmap.sh/projects/server-stats
