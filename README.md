# darey
akeracademy1

# Git Commands

Create branch: To create and switch to new branch: 

```bash
git checkout -b <name> 
```

To only create new branch an and not switch to it: 

```bash
git branch <name>
```

To connect the new branch to github (aka upstream the branch):

```bash
git push --set-upstream origin *feature/demo*
```

Push changes: 

```bash
git add . 
```

```bash
git commit -m "name" 
```

```bash
git push
```

Merge: 

```bash
git branch 
```

```bash
git checkout main 
```

```bash
git merge <branch name>
```

Add local repository to github:

```jsx
git remote add origin <Github repo URL>.git
git branch -M main

#Push all branches to github:
git push --all 
```

Push local branch to remote repository:

```bash
$ git push -u origin <branch-name>
```

Delete remote branch (removes branch from github.com itself, not from VScode):

```bash
git push origin --delete *feature/3894*
```

Rename a local branch, while being in the branch AND while being in another branch:

```bash
git branch -m feature/ng/4478

git branch -m <oldname> <newname>
```

Clone all branch:

```bash
git clone -b feature/4478 https://halhesp@dev.azure.com/halhesp/HALIT%20-%20Azure%20Enterprise%20Scale%20Platform/_git/hal-es-firewall
```

- To clone another person’s branch into local and then push it to a new branch:
    - git clone that branch from github to local VScode >
    - git checkout a new branch name in VScode >
    - git push set uptream from VScode to create a new branch in github!

To merge changes between local and origin:

```bash
git fetch 
git merge origin/main
```

OR

```bash
git pull
```

To push changes from a branch:

```bash
git add . git commit -m "name" git push
```

To remove a commit from git:

```bash
git remote prune origin
```

```bash
git rebase -i origin/main
```

```bash
git stash pop
```

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

```bash
git switch -c <new-branch-name>

Or undo this operation with:
git switch -
```

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6f6db497-84a8-4ca3-a170-41193def6335/Untitled.png)

Git merge:

I have two branches, `email-4437` and `develop`
`develop` is the latest one and I no longer need the old changes in `email-4437` branch, yet I don't want to delete them.

```powershell
$ git checkout develop
$ git merge -s ours email-4437#Merge branches, but use our (=staging) branch head
$ git checkout email-4437
$ git merge develop 
```

Check all branches 

```bash
@wes, naqeeb, barry, dave I can see you are working some docs. I checked with:
git for-each-ref --format='%(refname:short) %(authorname) %(committerdate:relative) %(subject)' refs/remotes/
```

Merge two branchs

```bash
git merge -m "message" <branchName>
```

Rename branch:

```jsx
git branch -m master main
```

Creating/switching branches:

```bash
git branch <new-branch-name>

#If you want to base your new branch on a different existing branch, simply add that branch's name as a starting point:
git branch <new-branch> <base-branch>

#The -b flag helps you create and change into your new branch:
git checkout -b <newBranchName>

```

https://www.git-tower.com/learn/git/faq/create-branch

Managing files:

‹

![Figure 1. umask structure](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6707f93d-9519-4733-97a8-b1b3597caf6a/Untitled.png)

Figure 1. umask structure

![Fig. 2 Changing colour/style of command prompt](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/15bd75e2-73d1-47f9-a6d5-67f198109f03/Untitled.png)

Fig. 2 Changing colour/style of command prompt

![Fig. 3 Special permissions](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6349120d-f899-427a-aac8-541025264af2/Untitled.png)

Fig. 3 Special permissions

![Fig. 3](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/af7a378e-750a-4dab-8009-1558d87fb16d/Untitled.png)

Fig. 3

![Fig. 4](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fb5a8ff8-fc15-4a38-b636-ba0392f46836/Untitled.png)

Fig. 4

```bash
#Create successive folders - parents and child:
mkdir -p /tmp/asia/india/bangla

#Remove dierctory and all contents:
rm -r /tmp/myd

#copy a directory and all its contents:
cp -r ./dir1 /tmp/dir2
```

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/91ed8f06-82c1-43b2-a7d9-c73cacd85547/Untitled.png)

```bash

#Create user: 
sudo useradd musa -m -d /home/musa -s /usr/bin/bash

#delete user:
sudo deluser username

#delete group:
sudo delgroup groupname

#set password:
sudo passwd musa

#enforce password expiry:
sudo chage -M 90 asma

#user account info:
cat /etc/passwd

#login as new user:
su - asma

#relogin/refresh your login to apply new settings:
su username

#permissions column:
	#Owner (name of column 2)    Group (name of column 3)   Other

#Change permissions:
chmod 755 filename

#umask ([Fig. 1](https://www.notion.so/Linux-Commands-35311150c02c425385d88c136467ace7?pvs=21)):
	#modifies default UNIX (666, 777) permissions 
	#0022
 
#list groups:
groups

#add user to sudo group (-aG = add/append to group)
sudo usermod -aG dialout,floppy,audio,video,kvm,netdev,docker nghazi

#create your own group:
sudo addgroup ghazifamily

#delete your own group:
sudo delgroup ghazifamily

#change command prompt colour/style ([Fig. 2](https://www.notion.so/Linux-Commands-35311150c02c425385d88c136467ace7?pvs=21))
export PS1="\[\e]0;\u: \W\a\]${debian_chroot:+($debian_chroot)}\[\033[0;36m\]\u@\[\033[00m\]:\[\033[0;35m\]\w\[\033[00m\]\$ "
		#\u - user name
		#\h - short hostname
		#\W - current working dir
		#\? - exit status of the command
#paste this into the .bashrc file 

#change group the file belongs to
sudo chgrp ngunix .bashrc

#change owner of file:
sudo chown ngunix .bashrc

#show what files current user can own:
ls -al *(U)

#show what files are owned by who:
ls -al *(.)

#show what files a user owns:
ls -al *(u:username:)

#show what files belong to other than specified user - use carat ^ caharcter:
ls -al *(^username:)

#show what files a group owns:
ls -al *(g:groupname:)

#what file can owner:
ls -al *(r) #read
ls -al *(w) #write
ls -al *(x) #execute

#what file can others:
ls -al *(R) #read
ls -al *(W) #write
ls -al *(X) #execute

#what file can group:
ls -al *(A) #read
ls -al *(I) #write
ls -al *(E) #execute

#can also put [special permissions](https://www.notion.so/Linux-Commands-35311150c02c425385d88c136467ace7?pvs=21) (Fig. 3) inside the brackets: SUID (4) - s, SGID (2) - s, Sticky bit (1) - t 
#the command passwd is located in /usr/bin/**passwd** file as encrypted data. All users can execute this command.
	#The user's password itself is stored inside the /etc/shadow file as a hash. 
	#Therfore, the passwd command needs to have access to this file. 

# in the permissions: -rwsr-xr-x , s = set uid permission > whoever uses the passwd cmd becomes effectively the root user for that command. So, seperate permissioons dont need to be stated. The last 7 after chmod puts all special permissions in:
chmod 7777 filename
#the resultant permissions are: -rwsrwsrwt
#The specical permissions replace the x (execute) permission. 

#Remove execute permissions from all:
chmod a-x filename
#the resultant permissions are: -rwSrwSrwT
#All the special permissions (SP) take on uppercase letters if the underying x (execute) pemrissions are removed. 
#Add suid SP
chmod u+s
#Add sgid SP
chmod g+s
#Add sticky bit SP
chmod o+t #or
chmod +t

#How to make shared folder? Append [SP](https://www.notion.so/Git-Commands-7fb6ccb2000a4930b3e89fb0fbfef649?pvs=21) to the directory's group permissions eg: 
chmod g+s directoryname
#anyone can then place files inside this directory. All those files will be shared. 
#Sticky bit can only be set on dirctories. chmod +t means only the owner can delete/rename files within it. Files within of other users cannot be altered by other users. 

#this enables anyone to modify:
chmod o+w filename
#this protects the directory from deletion of its contens:
chmod +t directory/

#rsync - copies files to a new directroy like cp but syncs it. 
rsync -vna original backup #copies entire dir into new location as a new folder
rsync -vna original/ backup #copies all contents of original dir into new location (not the folder dir folder itself)
# v=verbose (tells your what's happening); n=dryrun (simulates what would happen; a=recursive (can also use -r)
# rsync copying is idempotent i.e. only copies across if it isnt already there.

#This removes any files on the backup that arent present on the original:
rsync -a --delete original/ backup/

#put user into a group
sudo usermod -aG groupname username

#change owner of a file/folder:
chown musa folder/

#change group that folder belongs to:
chgrp groupname folder/

**#Links: Hard and soft**
#create a link to another file:
ln file file_link
#[This](https://www.notion.so/Linux-Commands-35311150c02c425385d88c136467ace7?pvs=21) number in orange box shows how many file names are pointing to the same file. Each seperate link-up has a unique number attached by UNIX. Can see [inode](https://www.notion.so/Linux-Commands-35311150c02c425385d88c136467ace7?pvs=21) by adding -i optio to ls command. inode number = any files with the same inode number point to the same file location in memmory
ls -i  #shows the inode number

#Soft link:
ln -s #creates a soft link to the file

#search using grep
grep "keyword" filename
grep -i #case-insensitive
grep -wi # w means you only want to match the specific string eg. when searcing for 'home', you look for 'home' and ignore 'homing'
grep -ir 'home' directoryname # r option enables a directory search and lists all the lines that contains the words being searched
grep -irl 'home' directoryname # l option - only highlights files that contain the string, hides the lines

#regex = regular expression; a form of pattern matching.
grep '^Word' filename
grep '[[:alnum:]+\.\_\-*@[[:alnum:]+\.\_\-]*' filename

# sed command - stream editor. Replace text with alt text:
sed -n 's/replaceTargetString/withReplacementString' quotes    # -n option only shows the lines that have been modified, s/ means string to be replaced
sed -n 's/replaceTargetString/withReplacementString/p' quotes  # /p = print the lines from the patterns space

#AWK

 

```

[Example .bashrc profile](https://www.notion.so/Example-bashrc-profile-fa950d0efa784ae5a412f6df6c8c13d8?pvs=21)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/609f132f-6193-40a8-b8b7-f0fa77f33a3d/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8c968463-3ffd-4c68-a209-3d8c9f52f16f/Untitled.png)

A systemd service is configured via system unit files located at /etc/systemd/system.

Configure your app to run as a service:

1. Go to /ect/systemd/system and create a unit file and name the file (e.g. my_app.service)
2. Inside the file write the section below for [Service] etc
3. Then run the last two commands
4. Check the service via `systemctl status my_app`

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3cd23c15-2dfd-44d8-aedc-abced16d891c/Untitled.png)

To configure it to run automatically when the system boots up:

Configure within the unit file for the service: [Install] section

Then to enable at every boot up: `systemctl enable my_app`

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/22d95e86-745a-4006-929d-6845b2c01070/Untitled.png)

```bash
[Unit]
Description=My python web application
# This is metadata for the service

#The below section are actions that the service exhibits:
[Service]
ExecStart = /usr/bin/python3 /opt/code/my_app.py
ExecStartPre=/opt/code/configure_db.sh #This starts before the service starts
ExecStartPost=/opt/code/email_status.sh #This starts after the service starts
Restart=always #this ensures the service always restarts when it fails

[Install]
WantedBy=multi-user.target

```

```bash
sudo apt update && sudo apt upgrade -y
```

Setting up different SSH hosts on VSCode:

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/6bd9723e-15d1-4b9b-8c50-334bd7f36965/61ff4559-0948-4272-9c47-b0b60b07a3cb/Untitled.png)
