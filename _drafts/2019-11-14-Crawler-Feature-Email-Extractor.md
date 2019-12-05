---
layout: post
title: "Crawler Feature: Email Extractor"
author: ugradDavid
icon: star-o
tags: [research, API, osint]
---

Below is a python script for extracting Emails using regular expressions from the links returned as search results for the crawler using Naver REST APIs.

```python

import urllib.request
from bs4 import BeautifulSoup
import re

targetUrl = input('URL: ')
r = urllib.request.urlopen(targetUrl).read()
soup = BeautifulSoup(r,'html.parser')

Source = str(soup.get_text())

email = re.findall(r"([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+)", Source)

print(email)

```
