#System Health Auto-Reporter 🖥️

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![GitHub repo size](https://img.shields.io/github/repo-size/SamStar0987/system-health-audit)
![GitHub top language](https://img.shields.io/github/languages/top/SamStar0987/system-health-audit)

A meticulously crafted Bash script to generate comprehensive Linux system health reports automatically.  
Perfect for those aspiring to demonstrate Linux, Bash, and automation skills in a professional IT setting.

---

## Features ✨

- **System Overview:** Hostname, uptime, kernel version, IP address.  
- **Resource Monitoring:** Disk usage, memory status, active users.  
- **Error Tracking:** Extracts recent critical or failed system events from logs.  
- **Automated Reports:** Generates timestamped reports in `~/sys_reports`.  
- **Cron Integration:** Fully automated daily execution — hands-free.

---

## Setup & Usage 🛠️

1. **Clone the repository:**
```bash
git clone https://github.com/yourusername/system-health-audit.git
cd system-health-audit

2. Make the script executable:
  chmod +x sys-audit.sh

3. Run manually (if desired):
   ./sys-audit.sh
4. Set up daily automation with cron:
   crontab -e
# Add the line (replace 'sam' with your username):
0 7 * * * /home/sam/system-health-audit/sys-audit.sh

Reports 📄

Reports are saved in ~/sys_reports
Filenames follow the format:

system_report_YYYY-MM-DD_HH-MM-SS.txt
Includes: system info, resource usage, active users, and recent errors.

Skills Demonstrated 🏅

Linux CLI mastery (df, free, uptime, who, grep)
Bash scripting: variables, conditionals, loops, redirection
Automation via cron
Git version control and GitHub workflow

Author 👤

Sam — aspiring Linux & Cloud Infrastructure Support professional.

License 📜
MIT License


💡 Notes:
- Replace `yourusername` with your GitHub username.  
- Replace `/home/sam` with your actual home directory.  
- You can also add screenshots or GIFs of the script in action later for extra polish.

---

# **Step 3 — Save and exit nano**

1. Press `Ctrl + X`  
2. Press `Y` to confirm saving  
3. Press `Enter`  

Now you have **README.md** in your project folder.  

---

If you like, the **next step** will be **adding the README to Git, committing it, and pushing to GitHub**, step by step.  

Do you want to do that next?
