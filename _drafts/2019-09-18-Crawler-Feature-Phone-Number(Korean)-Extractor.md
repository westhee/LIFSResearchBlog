---
layout: post
title: "Crawler Feature: Phone Number(Korean) Extractor"
author: 2023Keecheol
icon: star-o
tags: [research, API, osint]
---

Below is a python script for extracting Korean phone numbers using regular expressions from the links returned as search results for the crawler using Naver REST APIs.

```PYTHON
import urllib.request
from bs4 import BeautifulSoup
import re

targetUrl = input('URL: ')
r = urllib.request.urlopen(targetUrl).read()
soup = BeautifulSoup(r,'html.parser')

Source = str(soup.get_text())

phonenum = re.findall(r'\d{2,3}-\d{3,4}-\d{4}', Source)

print(phonenum)

```
