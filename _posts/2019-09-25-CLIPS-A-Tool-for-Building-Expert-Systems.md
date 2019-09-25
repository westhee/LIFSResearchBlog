---
layout: post
icon: star-o
title:  "CLIPS A Tool for Building Expert Systems"
author: 2019sungmi
tags: [expert system, forensics, procedure, CLIPS]
---

In this post, I will introduce CLIPS(C Language Integrated Production System), the tool we have been using to build our own Digital Forensics Investigation Expert System (You can read more about the project [here](https://lifs.hallym.ac.kr/blog/2019/09/19/Introduction-to-Expert-System.html)). When we talk about Expert Systems, we always need to consider 3 major components:

* Working memory
* Knowledge
* Inference engine

When we have a set of facts, we use the knowledge of experts (preferrably structured) to _infer_ new facts and come to a logical answer to a question. We will have a closer look on how that structure is applied to CLIPS.

### Starting CLIPS

1. Working memory - FACTS

In CLIPS, working memory is represented as a fact or fact-list. A fact is understood as a piece of information, whereas a fact-list is the list of all asserted facts (Riley, 2006). CLIPS can take ordered or non-ordered facts. 

An example of ordered fact:

```
(child-of Lisa Homer)
```

meaning that Lisa is Homer's child (_Lisa is child-of Homer_). Note that if you change this fact to (child-of Homer Lisa), it has an entirely different meaning (_Lisa is Homer's mother...?_). 

An example of non-ordered fact can be made using the deftemplate construct.

```
(deftemplate person 
(slot name)
(slot car)
)
```

In this case we made a construct called _person_, which takes name and car values. So if I want to write information about a person called _Batman_ who drives a car called _Batmobile_, in CLIPS it would look like this:

```
(person 
(name Batman)
(car Batmobile)
)
```

or,

```
(person
(car Batmobile)
(name Batman)
)
```

The order of the fact in this case, doesn't matter. 

2. Knowledge - RULES

Knowledge of experts is represented as defrule constructs in CLIPS. 

It typically looks like a standard _If...Then_ statement. The difference with the IF-THEN statement in a procedural language and CLIPS is that, with a procedural language the program-flow will be at the statement, while in CLIPS, the built-in inference engine keeps track of the condition satisfied rules so the order does not really matter. 

It is also understood as the _Whenver...Then_ statement.

A rule in CLIPS looks like this:

```
(defrule daughter
(child-of Lisa Homer) ;IF-1:Lisa is child-of Homer
(female Lisa) ;IF-2:Lisa is female
=> ;THEN
(assert (daugher-of Lisa Homer)) ;assert fact Lisa is daughter-of Homer
)
```

The IF-side is also called the Left-Hand-Side(LHS) while the THEN-part is called Right-Hand-Side(RHS).

3. Inference Engine 

The inference engine in CLIPS is a mechanism that a) matches rules to the current state of the system, i.e. looks for condition-satisfied rules and b)applies the action (Riley, 2006). 

For example, if I had the following fact list:

_(this is a part of a program to build a family tree! Just running this will not work properly!)_

```
(child-of Lisa Homer)
(child-of Bart Homer)
```
and a rule that tells me when two people are siblings:

```
(defrule sibling
(child-of ?p1 ?parent)
(child-of ?p2&~?p1 ?parent) ;p2 is not the same person as p1
=>
(assert (sibling ?p1 ?p2)) ;assert fact p1 and p2 are siblings
) 
```

When CLIPS matches the rule with the current fact-list, it would look like this;

```
(defrule sibling
(child-of Lisa Homer)
(child-of Bart Homer) ;parent name is the same as fact above
=>
(assert (sibling Lisa Bart)) ;Lisa and Bart are siblings
) 
```

So, although we started with 2 simple facts:Lisa's parent is Homer and Bart's parent is Homer, using the knowledge: IF people have the same parent, THEN they are siblings, we were able to infer that: Lisa and Bart are siblings.

This was a brief introduction to the concept of Expert System with CLIPS. If you want to know more about CLIPS, visit the developers site [here](http://www.clipsrules.net). 


_Reference_

- Riley, G. CLIPS Reference Manual - Volume I Basic Programming Guide (version 6.24). 2006 June. Available at : http://www.clipsrules.net



