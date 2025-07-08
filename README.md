# 🛡️ Cybersecurity Home Lab

A hands-on cybersecurity lab environment designed for learning and practicing real-world offensive and defensive techniques.

## ⚙️ Lab Overview

This lab simulates a small network of machines to replicate attacker/defender scenarios, explore common vulnerabilities, and understand how systems respond to threats.

### 🖥️ Components

| Machine        | Role         | Purpose                                  |
|----------------|--------------|------------------------------------------|
| Kali Linux     | Attacker     | Penetration testing tools, Metasploit, recon |
| Windows 10     | Victim       | Simulated endpoint for attack + logging  |
| Metasploitable | Target       | Vulnerable Linux machine for exploitation |
| Ubuntu 22.04 | Monitoring      | Machine running Splunk Enterprise |

> All machines are networked via **VMnet1 (Host-Only)** to keep the lab isolated from the internet.

---

## 🎯 Lab Goals

- Practice **network scanning**, **vulnerability assessment**, and **exploitation**
- Analyze attack behavior from the **blue team perspective**
- Build documentation for repeatable workflows and GitHub portfolio

---

## ✅ Setup Notes

- Virtualization platform: **VMware Workstation Pro**
- Network type: **Host-only (VMnet1)** for isolation
- Snapshots taken after clean installs for quick resets

---

## 🔧 Tools in Use

| Category           | Tool                   |
|--------------------|------------------------|
| Recon/Scanning     | `nmap`, `netcat`, `enum4linux` |
| Exploitation       | Metasploit Framework   |
| Web/App Testing    | Burp Suite, DVWA       |
| Defensive Logging  | Windows Event Viewer, Sysinternals |
| Monitoring | Splunk Enterprise, Sysmon, ELK Stack |

---

## 🗂️ Notes & Walkthroughs

> Notes and writeups go here in the future  

---

## 🚨 Disclaimer

This lab is for educational purposes **only**. All vulnerable machines are safely isolated from external networks. Do not use these techniques on systems you do not own or have permission to test.
