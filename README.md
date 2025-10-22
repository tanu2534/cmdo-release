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
-  Tracks every executed Git Bash command  
-  Generates structured, time-stamped logs  
-  Minimal footprint — just one executable file (`cmdo.exe`)  
-  Works completely offline  
-  Designed for professionals who value simplicity and insight  

---

##  Installation

1. Download all files (cmdo.exe, install.bat, cmdo.bat)
2. Keep all files in the same folder
3. Double-click `install.bat` (no need to run as admin)
4. Close and reopen Command Prompt
5. Type: `cmdo --help`

---

##  Usage

```bash

# Setup command hooks (first-time setup)
cmdo setup

# Start the local web dashboard whenever you want to access the command logs 
cmdo serve
```


Visit http://localhost:8089 to view your command history.
