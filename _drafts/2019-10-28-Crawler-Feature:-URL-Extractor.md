---
layout: post
title: "Crawler Feature: URL Extractor"
author: ugradDavid
icon: star-o
tags: [research, API, osint]
---

Below is a python script for extracting URLs from the links returned as search results for the crawler using Naver REST APIs. 


'''
import urllib.request
from bs4 import BeautifulSoup

targetUrl = input('URL: ')
r = urllib.request.urlopen(targetUrl).read()
soup = BeautifulSoup(r,'html.parser')

for a in soup.find_all('a', href=True):
    print(a['href'])
'''
