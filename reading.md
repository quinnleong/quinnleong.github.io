---
layout: default
title: Reading
permalink: /reading/
---
{% assign books = site.reading | sort: 'date' | reverse %}
{% for book in books %}- [{{book.title}}]({{site.url}}{{book.url}}) by {{book.author}} –– {% for num in (1..book.stars) %}★{% endfor %} –– {{book.date | date: "%-d %b %Y"}}
{% endfor %}
