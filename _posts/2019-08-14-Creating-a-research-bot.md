---
layout: post
title: "Creating a Telegram bot to support research"
author: profJames
icon: star-o
tags: [research, strategy]
---

Over the past few years, the [LIFS@Hallym Research Group](https://lifs.hallym.ac.kr) grew big, really fast.
We have tried several tools and workflows to try to stay organized as a group, but each researcher tended to use
the tools that they were already used to. Momentum kept most people from using all of the tools we were introducing.

One tool that everyone adopted quickly enough was a group messaging program. Telegram, in our case. Telegram (as well as
Kakao talk) allow the use of bots, so there is potential to automate some of our processes right in a system that everyone is comfortable using.

### Which language to choose
Creating a bot in Telegram is very straightforward, and there is a lot of [documentation](https://core.telegram.org/bots) available. One of the biggest
challenges was determining what language we wanted to use. We could default to trusty old [Python](https://www.python.org/), but some of our other
projects are using [Go](https://golang.org/). After a quick search, there is a [Go Telegram Bot API](https://go-telegram-bot-api.github.io/)
already available that looks full-featured.

### Bot features
We want the bot to help automate more of knowledge capture and sharing from the research group. Some initial ideas include:

* React: Listen for URLs, and post web links as news on the [LIFS@Hallym Website](https://lifs.hallym.ac.kr)
* React: Listen for Article URLs or DOIs, and ask for a rating - save the article meta-data, rating and keywords in a local DB
* Push: Choose a random article from selected journals every week, and push to the group
* Push: Monitor web news keywords and push to the group (spammy?)
* React: Return a list of keyword-related articles based on the group's ratings

Those are some of the first features we thought of, but there is a lot more potential for sure.

### Setting up the bot
Setting up a Telegram bot is very simple. Just read through the detailed [Telegram bot developer's guide](https://core.telegram.org/bots). Next, download the [bot API](https://go-telegram-bot-api.github.io/) for the language you selected. It looked like most common languages had *someone* working on an API. You should be able to find what you are looking for.

Once you have registered your bot in Telegram (with botfather), use the local APIs to authenticate. After that, the bot will be able
to receive commands. For example "/help". You can also configure your bot to listen to all conversations (even in a group chat). For this,
you will have to add the bot as an admin in the group chat and explicitly allow listening.

If the bot can listen to any conversations, it can automatically take some action based on anything that is posted. For example, if
someone says "Hey guys - check this out: https://dfir.science", the bot could parse "check this out" to mean "Interesting News", and then post the news and URL somewhere else.

### Getting running
Overall, getting a basic bot working took about twenty minutes. I can already see conversations and need to make the response functions.

![Image of Telegram messenger chatting to a default bot written in Golang](/img/blog/2019TelegramResearchBot.jpeg)
