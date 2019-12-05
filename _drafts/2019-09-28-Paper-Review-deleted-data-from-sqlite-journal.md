---
layout: post
title: "Paper Review: A study on the possibility of recovering deleted data through analysis of sqlite journal in messenger application"
icon: star -o
tags: [forensics, Research]
author: 2018jiyoon
---

How many messenger apps do you use? which one? how often do you delete the message in the message apps?
do you think it is possible to recover the deleted data in message app?

Recently I read a paper named _A Study on the Possibility of Recovering Deleted Data through Analysis of SQLite Journal in Messenger Application_. 
I will review this into 2, procedure & result part.

Many of message application use SQLite database to save and manage the data such as friends list, message itself.
Forensic researchers are mainly focusing on whether the data exist and if so,how to recover the deleted records.

## To recover 'deleted' message in message app

1. mainly read through .db .sqlite extention file.

If there was not enough data exist, then go to the next step.

2. analysis the unallocated space .

if it is posssible then , recover deleted records.

But as all know , the importance of personal privacy started to increase and many of message apps invented 'secure delete'.

In here, secure delete is not only delete the data but also delete the unallocated data in SQLite db file to reduce the possibility of recovering the personal data.

Since above privious way kind of stucked by 'secure delete', researchers started to look up journaling in DBMS(Data Base Management System).

3. look up journaling in DBMS

## Using Journaling

'journaling' is a feature of each DBMS that maintains a journal or log of all updates to the database.
journaling in SQLite can be devided into 2.

![journaling table](/img/news/1111111111.png)


1. roll back journal mode 

![rollback journal mode](/img/news/2222222.png)

2. WAL(Write-Ahead to Log)mode

![WAL mode](/img/news/333333333.png)

So when there is every transaction happens, db save in journal to back up the memory. At least there is possibility to find some of the deleted data.  

## To find the deleted data

used rooted phone, did reverse engineering

Reverse Engeneering procedure

![Reverse engineering procedure](/img/news/4444444.png)

In this paper, they checked whether the secure deleted mode is on. 
This is becasue , if the secure delete mode is not on, there is a possibility to find deleted data faster and easier. 
Follow the step 1 and 2 in way to recover 'deleted' message in message app. 
If the secure delete is on, then have to focus on 3 which is 'journaling'. 

![message app table](/img/news/55555.png)

Based on this paper, below table is summary of there works based on the procedure.

Based on the reading, facebook message and whatsapp does not have secure delete mode, therefore, there is more expectation to find more deleted data in message app.

Next will be result part. Which location they focused, which specific part they consider it is interesting as a forensic researcher.
