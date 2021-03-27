---
layout: default
title: Writing
permalink: /writing/
---
- [Home, in This Body](http://qleong.com/assets/writing/slantd.pdf) –– Slant'd 2019
{% for post in site.posts %}
- [{{post.title}}]({{site.url}}{{post.url}}) –– {{post.date | date: "%-d %b %Y"}}
{% endfor %}
