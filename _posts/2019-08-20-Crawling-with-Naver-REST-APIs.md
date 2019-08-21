---
layout: post
title: "Crawling with Naver REST APIs"
author: ugradDavid
icon: star-o
tags: [research, API, OSINT]
---

I am currently working on a Crawler using Naver's REST APIs using Python.

For those of you who are not familiar with Naver, it is an online platform most prominently used in South Korea.
Naver has made some of its REST APIs public so that App developers could apply them in their applications, you can see the REST APIs in [Naver's Developer Center](https://developers.naver.com/main/).

In case of Naver, each search parameter such as web search, blog, and news has different APIs, so I made this Crawler to make API calls for multiple search parameters in order. There is no delay between each API calls, and each search result is returned as JSON format.


```
import urllib.request

client_id = " " #Client ID given to your Naver ID as an App Developer
client_secret = " " #Client Password given to your Naver ID as an App Developer

encText = urllib.parse.quote("LIFS Institute") # Search Keyword

search_filter = ["webkr", "blog", "cafearticle", "news", "kin", "doc"]

search_order = 0

line_sep = '=' * 100

while search_order < len(search_filter):

    url = "https://openapi.naver.com/v1/search/" + search_filter[search_order] + "?query=" + encText +"&display1000"

    request = urllib.request.Request(url)
    request.add_header("X-Naver-Client-Id",client_id)
    request.add_header("X-Naver-Client-Secret",client_secret)
    response = urllib.request.urlopen(request)
    rescode = response.getcode()

    if(rescode==200):
        if search_order == 0:
            print(line_sep)
            print('Search Results from Web Documents \n')
        elif search_order == 1:
            print(line_sep)
            print('Search Results from Blog \n')
        elif search_order == 2:
            print(line_sep)
            print('Search Results from Cafe \n')
        elif search_order == 3:
            print(line_sep)
            print('Search Results from News \n')
        elif search_order == 4:
            print(line_sep)
            print('Search Results from Q&A \n')
        elif search_order == 5:
            print(line_sep)
            print('Search Results from Scholar \n')
        
        response_body = response.read()
        print(response_body.decode('utf-8'))
        
        search_order = search_order + 1
            
    else:
        print("Error Code:" + rescode)
    
    

else:
    print('Keyword search is completed.')
```


## Reference
https://wayhome25.github.io/python/2017/07/15/naver-search-api/
https://ericnjennifer.github.io/python_crawling/2018/01/21/PythonCrawling_Chapt9.html
https://astralworld58.tistory.com/74
https://developers.naver.com/docs/search/blog/
