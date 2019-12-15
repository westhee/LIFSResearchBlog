---
layout: post
icon: star-o
title: "How to use Github with VSCode"
author: 2019sungmi
tags: [vscode, coding, github, beginner]
---
Last time, I introduced some useful extensions for VS Code ([here](https://lifs.hallym.ac.kr/blog/2019/12/09/VScode-Cheat-Sheet-for-Beginners.html)).

Other than the cool extensions, VS Code is also excellent to work with your Github repositories. In this tutorial, I will show you how to use Github with VS Code from the very beginning (_very, very beginning_).

## Install

First of all, you need to install the editor itself. Click on the link below to install _VS Code_ for your OS. Then, install _Git_ (NOT Github!!!).

* [VSCode](https://code.visualstudio.com/) for your OS
* [Git](https://git-scm.com/downloads) for your OS

> Git is an opensource version control system to track changes on your files, and Github is a hosting service that uses Git to help developers to store their projects and other useful features.

## On Github

1. Go to [Github](https://github.com/) and create an account or login if you already have an account.

2. Once you are logged in, you should see a tab called "Repositories". This is the location where your project will be stored. Find the green "New" button and click.\
![newrepo](img\blog\githubVScode\newrepo.png)

3. Now you should see a screen like this:\
![createrepo](img\blog\githubVScode\createrepo.png)\
Name your repository and add a short description (as highlighted in the screenshot). Then click on "Create Repository".

4. Now that your repository is created, copy the link from your new repository or click on the button as emphasized in the screenshot below (in red circle)\
![copylink](img\blog\githubVScode\copylink.png)

## On your PC

1. Now open VS Code. Go to _View > Command Palette_ or use shortkey (Ctrl+Shift+P) to open the Command Palette.

2. From there search for _git clone_ and press Enter.\
![gitclone](img\blog\githubVScode\gitclone.png)

1. The Repository URL is the URL you have copied is Step 4 in the previous Section. Paste it and press Enter.\
![repourl](img\blog\githubVScode\repourl.png)

4. VS Code will now prompt you to choose a folder. I created a new folder named "test". Go to your new folder and click on "Select Repository Location".\
![select](img\blog\githubVScode\selectfolder.png)

5. When VS Code finishes initializing your git repository, you will see your folder in the sidebar. When you **hover** next to your folder name, you will see icons to add new files or folder. Click on "New File".\
![newfile](img\blog\githubVScode\newfile.png)

6. Here, I will create an one-line python file. You can also simply create a text file. Just make sure to add the extension (".txt", ".py", etc) to your file name. Once you add your file, you will see a light blue mark on the 3rd icon ("Source Control") on the side bar. Click on it.\
![hellopy](img\blog\githubVScode\hellopy.png)

7. Now in Source Control, you have several options to commit your local changes to your Github repository. You can either use the menu button (orange 1) or the message box (orange2). I will use the message box.\
![commit](img\blog\githubVScode\commit.png)

8. Add a message (that explains what changes you made) and press Ctrl + Enter.\
   _!!! You might get a prompt from VS Code saying your changes are not staged. You can either stage (add) your changes from the Source Control menu or click automatically stage and commit (...or something similar sounding option in the prompt)_\
![msg](img\blog\githubVScode\commitMSG.png)

9. Now, you should see nothing under changes and we are ready to push our changes out to Github. Click on the Source Control menu button and select _Push to..._\
![pushto](img\blog\githubVScode\pushto.png)

10. VS Code will show you the remote repository URL connected to your local folder. Click on "origin".\
![origin](img\blog\githubVScode\origin.png)

11. Let's go back to [Github](https://github.com/) and see if it worked. Navigate to your repository - and you should see the file (in my case "hello.py") we just created! Notice the message ("created hello"). This will be useful to mark what changes we made.\
![voila](img\blog\githubVScode\voila.png)

That's it! Now for every change we make in that folder, we can easily stage, commit and push to our Github repository and keep track of our file changes!

I just covered the basics of starting a git repository in this post, but if you want to know what other things you can do with the version control feature, please visit [Vscode Docs](https://code.visualstudio.com/docs/editor/versioncontrol)!
