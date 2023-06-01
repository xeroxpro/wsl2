WSL2
Windows Subsystem for Linux(WSL)

The Windows Subsystem for Linux lets developers run a GNU/Linux environment -- including most command-line tools, utilities, and applications -- directly on Windows, unmodified, without the overhead of a traditional virtual machine or dualboot setup.

You can:

Choose your favorite GNU/Linux distributions from the Microsoft Store.
Run common command-line tools such as grep, sed, awk, or other ELF-64 binaries.
Run Bash shell scripts and GNU/Linux command-line applications including:
Tools: vim, emacs, tmux
Languages: NodeJS, Javascript, Python, Ruby, C/C++, C# & F#, Rust, Go, etc.
Services: SSHD, MySQL, Apache, lighttpd, MongoDB, PostgreSQL.
Install additional software using your own GNU/Linux distribution package manager.
Invoke Windows applications using a Unix-like command-line shell.
Invoke GNU/Linux applications on Windows.
Run GNU/Linux graphical applications integrated directly to your Windows desktop
Use GPU acceleration for machine learning, data science scenarios and more

What is WSL 2?
WSL 2 is a new version of the Windows Subsystem for Linux architecture that powers the Windows Subsystem for Linux to run ELF64 Linux binaries on Windows. Its primary goals are to increase file system performance, as well as adding full system call compatibility.

This new architecture changes how these Linux binaries interact with Windows and your computer's hardware, but still provides the same user experience as in WSL 1 (the current widely available version).

Individual Linux distributions can be run with either the WSL 1 or WSL 2 architecture. Each distribution can be upgraded or downgraded at any time and you can run WSL 1 and WSL 2 distributions side by side. WSL 2 uses an entirely new architecture that benefits from running a real Linux kernel.


Prerequisites
You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11 to use the commands below. If you are on earlier versions please see the manual install page.


How to install WSL and get ready for container based application?

1.)Install git on your system
    - Open Powershell and type "winget install --id Git.Git -e --source winget"

![image](https://github.com/xeroxpro/wsl2/assets/40662677/876fa490-2853-4f0d-a0d1-d093ceb5c45b)


