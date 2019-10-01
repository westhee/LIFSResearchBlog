---
layout: post
title: "Crawler Feature: Query Match Counter"
author: ugradDavid
icon: star-o
tags: [research, API, osint]
---

Below is a python script for extracting Korean phone numbers using regular expressions from the links returned as search results for the crawler using Naver REST APIs. 


'''
import urllib.request
from bs4 import BeautifulSoup

targetUrl = input('URL: ')
r = urllib.request.urlopen(targetUrl).read()
soup = BeautifulSoup(r,'html.parser')

query = input('Keyword: ')

print(soup.get_text().count(query))
'''
