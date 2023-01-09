---
layout: post
title: "URL Extraction after crawling web pages"
author: 2023Keecheol
icon: star-o
tags: [research, API, osint, naver]
---

When crawling webpages, it is prevalent to want to find links on the web page to use as the next candidate for crawling. Below is a python script for extracting URLs from the links returned as search results for the crawler using Naver REST APIs. 


```python
import urllib.request
from bs4 import BeautifulSoup

targetUrl = input('URL: ')
r = urllib.request.urlopen(targetUrl).read()
soup = BeautifulSoup(r,'html.parser')

for a in soup.find_all('a', href=True):
    print(a['href'])
```
