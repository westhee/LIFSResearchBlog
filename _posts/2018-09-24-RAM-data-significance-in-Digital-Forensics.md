---
layout: post
title: "RAM data significance in Digital Forensics"
icon: star -o
tag: [RAM, Memory Forensics, Volatile]
author: ugrad007
---

Last semester, I made memory dump file for analyzing trace remaining after using Tor-browser. However, my boss said it is useless because that file was available to get only when the computer kept power on. After that I thought the RAM data are so volatile that forensic investigators really don’t care about when do investigation. However, today professor mentioned about RAM evidence in class, so I thought it can be important in some cases even if it has volatile properties. And then I found this paper explaining about the significance of volatile data. 

This is the summary of the paper, RAM data significance in Digital Forensics (2015).

### Live Data Forensics
It is defined as volatile or partially volatile computer data which disappear on shutting down. Most investigators normally analyze the data from HDD, CD/DVD, USB memories known as post-mortem analysis. However, for knowing live data, we have to analyze Pagefile, Hibernation file, Crash Dump files and Random Access Memory (RAM). 

### Random Access Memory (RAM)
All data made by users pass through RAM first. All information stored in RAM tell us specific time of what happened while data in the hard disk show that in general.

### Importance of RAM analysis
Using RAM investigators can figure out information that is more restricted in traditional post-mortem analysis. Investigators have difficulty to access encrypted data using hard disks and USB. They need to crack it by using tool. However, the data that users entered their passwords are being stored in RAM. It is possible to hide data in RAM to make systems endanger by malware. We can understand the way the computer used when we detect malware. 

### Information and Data that can be found in the RAM
* Active processes
  * Processes which were stopped can also be found in RAM would remain in RAM.
* Open files and “registry handles”
* General files
  * All files opened, read, modified
  * Copied and paste feature
  * clipboard
* Information on network traffic
  * Open ports
  * Open connections or planted processes
* Internet data
  * Very common
  * Downloaded data (Gmail, Yahoo emails, Skype conversation)
  * But no data after shut the computer down
* Passwords and cryptographic keys
  * They have to be stored in RAM and remain stored there until overwritten or the computer is shut down
* Decrypted content (hidden processes and data)
  * If users decrypt the file, that unencrypted files will remain in RAM
*  Other data that can be found in RAM (malware, temporary data, portable apps)
  * Which users logged in and what time and what did users do.
  * Retrieve a screenshot of the desktop and all opened windows
  * RAM information in virtualized environment

### Reference
* K. Hausknecht, D. Foit, J. Buric, “RAM data significance in Digital Forensics”, 2015
