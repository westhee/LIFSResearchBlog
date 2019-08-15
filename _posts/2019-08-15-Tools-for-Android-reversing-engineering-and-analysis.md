---
layout: post
title: "List of tools for Android reverse engineering and analysis"
icon: star-o
author: 2019yohannes
tags: [reversing, android, tools, resources]
---

I wish to share these tools, resources, and platforms which I came across while I am doing reverse engineer and analysis on Android apps.

1.The primary tools needed to interact with android phones and apps are **SDK Tools** and **SDK Platform-Tools** packages. These packages include **ADB (Android Debugging Bridge)**.
ADB tools is a command-line tool that makes communication with an Android device possible. The adb command enables a variety of device actions, such as installing/uninstalling apps, pulling and pushing files, debugging apps and so on.

_[Intalling and configuring SDK tools including ADB](https://www.howtogeek.com/125769/how-to-install-and-use-abd-the-android-debug-bridge-utility/)_

![Adb command](/img/blog/adb.png)

2.**[Apktool](https://ibotpeaches.github.io/Apktool/)** is a popular free tool that can extract and disassemble resources directly from the APK archive and disassemble Java bytecode to Smali format (Smali/Baksmali is an assembler/disassembler for the Dex format. It's also Icelandic for "Assembler/Disassembler").
It is also possible to reassemble the package, which is useful for patching, code injection and applying changes to the Android resources, with apktool.

3.**[Dex2Jar](https://github.com/pxb1988/dex2jar)** is a free tool to work with Android “.dex” and Java “.class” files. The “.dex” (Dalvik Executable) files are a compiled Android apps, which then turn into a single “.apk” (zipped file) file on the device.
   The output of this tool is jar file which contains the java source code of the Android application. From the above link, you can download the tool.

4.**[JD-GUI](https://java-decompiler.github.io/)** is a standalone graphical utility that displays Java source codes of “.class” files. You can browse the reconstructed source code with the JD-GUI for instant access to methods and fields (Source its official site).
It is possible to open the “.jar” file -- which is decompiled using Dex2Jar -- with JD-GUI. Then, you can see the source code of the application which is Java classes in a readable format.

![JD-GUI](/img/blog/jd-gui.png)

5.**[Jadx]( https://github.com/skylot/jadx/releases)** is an android decompiler which has capability of decompiling the source code from .apk file & provide human readable java class files. 
In Jadx, you don't need apktool and Dex2jar tools to view the source which can disassemble and decompile the entire process with just single click.

_[A tutorial for configuring and using Jadx](http://nestedif.com/android-security/1-reverse-engineering-android-apk-using-jadx/)_

![jadx gui](/img/blog/jadx.png)

6.**[Xposed](https://repo.xposed.info/)** is a “dynamic” instrumentation or hooking framework that allows developers or security professionals to replace any method in any Android class.
You can change parameters for the method call, modify or change the return value or skip the whole method completely. Some of the things to perform using xposed: byppass securities such as SSL pinning or root detection,
edit limitation on apps such as twitter's character limit, and so on.

_[List of already developed modules for xposed](https://repo.xposed.info/module-overview)_

_[Here is blog on how to use, configure and a titorial on developing a module for xposed framework](https://binderfilter.github.io/xposed/)_

Once installed and configured, the framework looks like the following image.

![Xposed interface](/img/blog/xposed.png)

7.**[Frida](https://www.frida.re/docs/home/)** is a dynamic code instrumentation toolkit like xposed. It lets you inject a piece of JavaScript code or your own library into native apps including Android platform. Unlike exposed, it is used on other operating systems such as Windows, macOS, GNU/Linux, iOS, and QNX.
Like xposed, it lets to edit or instrument running apps such as hook method calls, trace API calls, intercept http calls, and so on. 
Both xposed and Frida have an active developers community and have a lot of developed modules and libraries. 

_[List of libraries for Frida](https://github.com/dweinstein/awesome-frida)_

_[A tutorial to install, configure and use Frida framework](https://www.notsosecure.com/pentesting-android-apps-using-frida/)_

If it is installed and configured successfully, you should be having the output as shown in the image below _(the image is taken from the above tutorial link)_. The command outputs shows all the processes currently running.

![frida communicating with andoird phone from windows machine](/img/blog/frida.png)


   
