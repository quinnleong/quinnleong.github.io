---
layout: default
title: Books
permalink: /books/
---
{% for book in site.books %}
  - [{{book.title}}]({{site.url}}{{site.baseurl | relative_url}}{{book.url}}) - {{book.stars}}/5
{% endfor %}
