[![Chrome Web Store](https://img.shields.io/badge/chrome--web--store-v%200.0.3.2-blue.svg)](https://chrome.google.com/webstore/detail/nominationtool/abjpihafglmijnkkoppbookfkkanklok)
###TODO
* History of UNIX
* Basics of navigating and terminal commands, top 50 useful bash commands
* grep, sed, awk fundamentals
* Do some simple commands in terminal, ie moving specific files recursively from a directory
* write a shell script to generate a randomized MAC address you can use at limited time wifi hotspots
* crontabs
* Setting up a postgres db
* Installing, updating and maintaining packages (apt-get, brew, pip)

### Resources
* [Explainshell](http://explainshell.com/)

### Wtf is UNIX

UNIX is a operating system developed very long time ago, by AT&T (Bell Labs) 1960s. Back then only limited access to it, even then it was expensive. One of the users was University of Berkeley, most of the open source OS is based on the University of Berkeley version of UNIX called BSD stands for Berkeley Software Distribution. Eventually BSD looked nothing like the original UNIX, BSD became very popular which led to many other versions of it such as FreeBSD, Darwin, MacOSX.

Another branch of UNIX was created in Vrjie Universiteit in Amsterdam, called Minix. This wasn't that popular but Minix gave birth to another branch called Linux which is pretty much what most of world runs on.

![UNIX System](http://ws.afnog.org/afnog2004/intro-freebsd/00-intro-freebsd/unix-intro/layers.gif)

#### The kernel
This is the worker that manages, processes, prioritizes programs and directly works with the hardware.
A more realistic [map](http://www.makelinux.net/kernel_map/) of a Linux kernel.

### Commands to do during session
`cd`

`ls`

`pwd`

`mkdir`

`touch`

`cat`

`cp`

`mv`

`rm`

`|` Pipe function

`>` Redirector

`>>` double redirector (append)

### Three basic file descriptors
**Standard Input** 0 __STDIN__
**Standard Output** 1 __STDOUT__
**Standard Error** 2 __STDERR__

### Exercise
* Write a shell script that makes 10 new directories labelled `folder[i]`
* inside each folder create a new textfile called `file[i].txt`
* In each text file write this text "This is the text file number [filename numer] in [foldername]
* Once it has done that list all the directories and output it to a log file labelle `log.txt`

### grep
`grep` Global Regular Expressions Print
`ls -l | grep [keyword]`

### awk
`awk` 

### sed
`sed`

**Exercise**
* Using grep find Error in a log file and get 2 lines below it
* Using awk Get 3rd column from a text file.
* Replace all cats with dogs in a text file.

### Count lines in a text file
`wc -l`

### List all attached disk 
`lsblk`

### Open man page about command
`man [shell command]`
`man -t manpage | ps2pdf - filename.pdf`

### List all folder sizes in human readable format
`du -a -h --max-depth=1 | sort -hr`

### List all attached disks and Usage stats
`df -h`

### List all block devices
`lsblk`

### Get your last command without the arguments
`!:-`

### move shit from multiple directories
`find . -name '*.[file extension]' -exec mv "{}" ./ \;`

### Run process in background and omit all terminal messages
`nohup command &`

### Mount a unattached disk to a folder
`mount /dev/[blockname] path/to/folder`

### Find and delete all folders
`find . -name "[folder-parameters]" -type d -exec rm -r "{}" \;`

### Fix broke pip pipe Ubuntu
apt-get installs a much older version of pip which can lead to problems, completely remove python-pip with:

`apt-get remove --purge python-pip`
then:

`curl https://bootstrap.pypa.io/get-pip.py | sudo python`
using sudo if required

### generate a random MAC address
`openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/:$//'`

