---
layout: default
title: Books
permalink: /books/
---
{% for book in site.books %}
  - [{{book.title}}]({{site.url}}{{site.baseurl}}{{book.url}}) - {{book.stars}}/5
{% endfor %}
