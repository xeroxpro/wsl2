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

2.)Clone the Related repository in your system using powershell.

"git clone https://github.com/xeroxpro/wsl2.git" 

![image](https://github.com/xeroxpro/wsl2/assets/40662677/9f6d9a8a-451e-4e9b-9c13-6804a7373d41)

3.)From Powershell "cd wsl2"

![image](https://github.com/xeroxpro/wsl2/assets/40662677/b5ab0096-3def-4d7d-9b53-dbe7353ad12c)

4.) To start the installation all you need to do is just type ".\setup.bat" and start the batch file to manage the installation part.

![image](https://github.com/xeroxpro/wsl2/assets/40662677/a794175f-20ec-4157-ba9c-998ea7c833d4)


5.)On the Installation part Powershell asks from to let the information go through with some user permissions.Please Choose "Yes"/"Da"/"Ja"/"Evet" to be able to proceed to the installation steps.

![image](https://github.com/xeroxpro/wsl2/assets/40662677/f83be8a6-7bfb-4b52-8829-78b93108d214)

6.)The next step is to open account on your Ubuntu Virtual Machine type Unix User name: "Your Chosen Name",And asks you type your Ubuntu Machine password twice.Please do not forget your password.We will need it during coming steps.(P.S. !!!! While you are giving your desired password,your password will not be seen on the screen,but it will be prompted exactly what you type)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/3c1b7af5-a29d-4166-b6b0-16a69815259b)

7.)Wait till Ubuntu installation finishes.You will be seeing a screen like below.

![image](https://github.com/xeroxpro/wsl2/assets/40662677/72abd293-9740-4918-9812-061bb1fd1731)


8.)Now your ubuntu machine is ready.Type "exit" to go further with next steps.Our coming stages are the ones that we can install Docker onto our Ubuntu VM.

![image](https://github.com/xeroxpro/wsl2/assets/40662677/8e49719f-8a67-4207-a63e-029f1cbe3897)

9.)Next Stage we are carrying on from our powershell console is the one that docker.io installation is taking place.Just wait.And please fill the password parts where installation is demanding from your input like the one below.

![image](https://github.com/xeroxpro/wsl2/assets/40662677/2e646b7c-c1e1-4978-8f1c-c59adfc8d2ec)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/97028255-6163-47cc-ab8e-873cc8ce91a1)

10.)You will waiting for sometime but not so long in order to complete docker installation.It is goint to demand your password login also in here too.You can see in below attached screenshot.Please just type in your Ubuntu Password.(It is also invisible for your safety)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/eca3b5a5-07fb-46db-9461-0933a8afe943)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/b0dcc39a-e645-446e-ba69-3009a7fb0b8b)

11.)At the last step you will see the installation of the docker container.(Image used for this installation is the one loacted in dockerhub.io whisch is an official image)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/c2d3689a-8583-4cc1-98b1-44f3aea05da4)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/901ae62e-cb87-4b6a-8a31-0b18a5c47d10)

12.)End lastly you will see your application is finished.Please first do not close the screen.Just type "http://127.0.0.1" or "localhost"
in your favorite browser.It doesnt matter whether is firefox,chrome,edge or others.Go to your browser and check you can see the web page is coming.

![image](https://github.com/xeroxpro/wsl2/assets/40662677/f2c21116-fc44-4fa6-b36e-7a220f88ba91)

13.)If you see that on 127.0.0.1 or localhost our page has been available than we can restart our wsl framework and reattach our docker container in order to reboot both established Ubuntu VM and docker installation.(I acknowledged that our site is ready for our visit.And our installation is perfect:)

14:)Please Close the Powershell installation window.Reopen a new window.And Type the below commands.

"wsl -l -v"

![image](https://github.com/xeroxpro/wsl2/assets/40662677/a0e8ad58-00e4-4b05-807a-d90ffa84c2f8)

"wsl --shutdown"

![image](https://github.com/xeroxpro/wsl2/assets/40662677/fb806246-6183-4cec-9353-39edc6f35d73)

"wsl" (By giving wsl or wsl -d Ubuntu command you will be logged into your running Ubuntu VM.)

![image](https://github.com/xeroxpro/wsl2/assets/40662677/15ff7b11-fa44-4e21-a220-1cc9f66602ae)

15)Type "sudo docker ps -a" (By using docker command you will be engaged with the containerization platform and see the prviously running containers which is carrying our applications then please type the command below in order to initialize our Web Application Container.

"sudo docker start tcmb_finance" (Do not forget to type sudo and give your Ubuntu Password.)

16)Now You can again go toy your favorite browser and type "127.0.0.1" or "localhost".





![image](https://github.com/xeroxpro/wsl2/assets/40662677/cdef9d54-881b-4b84-a480-585938a371f8)


![image](https://github.com/xeroxpro/wsl2/assets/40662677/a143c370-6315-4790-a10d-3175b22cd2a9)


















