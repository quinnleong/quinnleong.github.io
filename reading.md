---
layout: default
title: Reading
permalink: /reading/
---
{% for book in site.reading %}
  - [{{book.title}}]({{site.url}}{{book.url}}) by {{book.author}} –– {% for num in (1..book.stars) %}★{% endfor %} –– {{book.date | date: "%-d %b %Y"}}
{% endfor %}
