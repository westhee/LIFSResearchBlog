---
layout: default
title: "Tags Index"
permalink: /tags
---

Thank you for checking out LIFS@Hallym. Below is a list of posts categorized by tag.
<br />
{% for tag in site.tags %}
  <h3 class="{{ tag[0] }}">{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}