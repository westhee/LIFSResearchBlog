---
layout: post
title: "Creating Personal Run Commands in Windows 10"
author: ugradDavid
icon: star-o
tags: [windows, tips]
---
In a Windows 10 environment, there are many ways to launch an application:
- Click shortcut files on Desktop
- Click Windows button and type in the App's name and run
- If you cannot find the executable file by the means above, Open File Explorer, go to Programs and Files, look for the target application, and run.

From my experience, the first option could make your Desktop screen quite messy if you keep adding shortcuts there. Second option involves running "pretty" graphic, so there is a delay for Windows start menu popping up, typing in texts, returning search results, and returning start options. **I personally hate this option.** As for the last option, I know You don't want to do this.

This is why I prefer to use **"Run" function** for opening applications.

I know that there are many people who are already utilizing this function to make their lives easier, and directions for using Run function and most-used Run Commands such as chrome, calc, etc. are well explained in this [link](https://www.isumsoft.com/windows-10/most-used-run-commands-for-windows-10-users.html).

## How to create a Customized Run Command?

There are default Run Commands that are already built in to Windows 10 system.

So how can you run applications of your choice such as Telegram via Run function?

- Go to the file directory of Telegram: "C:\Users\%USERPROFILE%\AppData\Roaming\Telegram Desktop"
- Right click on Telegram.exe file, "Send to", "Desktop (create shortcut).
- Change the name of the shortcut file to the command name you want to give. (I made it "tgram")
- Open File Explorer and go to "C:\Windows". (Copy and paste the path to your File Explorer window)
- Drag and drop the shortcut file, Click Yes to granting Admin permission to do so.
- Press Window + R for launching Run window, and enter your new Run command.
