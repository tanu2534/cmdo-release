<h1 align="center"> CMDO — Windows Command History Logger</h1>
<p align="center">
  <b>A sleek Git Bash command history logger for Windows that tracks and visualizes your terminal activity.</b>
</p>
<p align="center">
  <a href="https://github.com/tanu2534/cmdo-release/blob/main/cmdo.exe">
     <b>Download Latest Version</b>
  </a>
</p>

---

##  About
CMDO (Command Memory & Data Observer) is a lightweight Windows executable designed to record and manage your Git Bash command history with ease.  
It helps developers and analysts keep track of terminal usage patterns — locally and securely.

###  Key Highlights
-  Search and filter command history
-  Commands grouped by directory
-  Copy commands with one click
-  Beautiful dark-themed interface
-  Auto-cleanup of old commands

---

##  Installation

1. Download all files (cmdo.exe, install.bat, cmdo.bat)
2. Keep all files in the same folder
3. Double-click `install.bat` 
4. Close and reopen Command Prompt
5. Type: `cmdo --help`

###  Security Notice (Self-Signed Certificate)

CMDO is signed with a self-signed certificate. Windows may show a SmartScreen warning on first run.

**To remove the warning and trust the certificate:**

1. Download [`CMDO-Certificate.cer`](https://github.com/tanu2534/cmdo-release/blob/main/CMDO-Certificate.cer)
2. Right-click the file → **Install Certificate**
3. Select **Current User** → Next
4. Choose **"Place all certificates in the following store"** → Browse
5. Select **"Trusted Root Certification Authorities"** → OK
6. Click **Next** → **Finish**

After installation, the SmartScreen warning will not appear.

> **Note:** This certificate is only for CMDO. Installing it is optional but recommended for a smoother experience.

---

##  Usage
```bash
# Setup command hooks (first-time setup)
cmdo setup

# Start the local web dashboard whenever you want to access the command logs 
cmdo serve
```

Visit http://localhost:8089 to view your command history.

---

## Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/tanu2534/cmdo-release/refs/heads/main/Screenshot.png" width="700"/>
</p>
