---
layout: post
titel: "Linux sandboxing techniques (Smack vs Chroot)"
icon: star-o
author: "2018terrence"
tags: [sandbox, research]
---
Sandboxing is a security mechanism used by linux to restrict and provide privilliges to applications and other system files 
Moredetails can be found at 
* [https://chromium.googlesource.com/chromium/src/+/HEAD/docs/linux_sandboxing.md]
* [https://en.wikipedia.org/wiki/Sandbox_(computer_security)]
* [https://www.comparitech.com/blog/information-security/what-is-sandboxing/]

### Chroot vs Smack
* 'Smack" is the Simplified Mandatory Access Control Kernel.
* Smack is used in the Tizen operating system on Samsung TV
* Smack consists of three major components:
  * The kernel
  * Basic utilities, which are helpful but not required
  * Configuration data
   
* 'Chroot' A chroot is an operation that changes the apparent root directory for the current running process and their children.

Moredetails can be found at:
* [http://man7.org/linux/man-pages/man2/chroot.2.html]
* [https://lwn.net/Articles/252794/]
* Chroot is used in the WebOS operating system on LG Smart TV

![LG vs Samsung](/img/news/lg_vs_samsung.jpg)
