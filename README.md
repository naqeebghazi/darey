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

Output of cat ~/.ssh/id_ed25519.pub (public key):  

ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINZWZ9e+MvdRva2mSiILLqld2TUtT5WjGhQHcaoSh2a/ [naqeeb.ghazi@capgemini.com](mailto:naqeeb.ghazi@capgemini.com)

Private key: 

b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW QyNTUxOQAAACDWVmfXvjL3Ub2tpkoiCy6pXdk1LU+VoxoUB3GqEodmvwAAAKC0WEhttFhI bQAAAAtzc2gtZWQyNTUxOQAAACDWVmfXvjL3Ub2tpkoiCy6pXdk1LU+VoxoUB3GqEodmvw AAAED1SWn6n6ULNHDUfyNF8nmByeDm8ur0eIEsEINXWzTMntZWZ9e+MvdRva2mSiILLqld 2TUtT5WjGhQHcaoSh2a/AAAAGm5hcWVlYi5naGF6aUBjYXBnZW1pbmkuY29tAQID

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
