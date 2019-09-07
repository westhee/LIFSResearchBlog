---
layout: post
icon: star-o
title:  "Introduction to Expert Systems"
author: 2019sungmi
tags: [expertsystems, forensics, DFprocedure, CLIPS]
---

### What is an Expert System?
As one category of intelligent system, the Expert System uses pre-collected knowledge to imitate the decision making process of an expert. The necessity for Expert System in various fields stems from the surplus of data we find ourselves in, in this era. Using Expert Systems on manually tiring, repeated work can save public and private organizations time and human resources.  
An Expert System can look similar to a decision-support-system(DSS), however, while a DSS is a supporting tool for the _human_ users to make a decision, an Expert System's ultimate goal is to make the decisons by itself. Using the knowledge (mostly in form of _If, Then_ rules), the system goes through the list of facts it has acquired and gives the user a logically sound answer. 

### An Expert System for Digital Forensics
In our project [LIFS@DFIExpertSystem](https://lifs.hallym.ac.kr/projects/2018-ExpertSysteminDF.html), we are attempting to bring automation in some specific digital forensic cases. The goal of this project is to support investigators by giving back a solution (or hypothesis) that has been logically inferred. Below is the framework of our expert system:

![expert_system_structure](/img/exsys_structure.png)

In this framework, the process starts with a question by the user. 

_"Is this a png file?"_
_"What is the best practice to image this disk?"_
_"Did the suspect watch this video at this time?"_ 

are all possible questions a user could ask the expert system. The system alreay has a set of rules (expert knowledge) and runs forensic tools such as Autopsy or Linux commands to generate data that will be processed and asserted to the fact-list. With an Expert System building tool like [CLIPS](http://www.clipsrules.net/), we can use its in-built inference engine to infer new facts, which should ultimately answer the user's question.


