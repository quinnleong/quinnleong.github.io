---
layout: default
title: Film
permalink: /film/
---
{% assign film_posts = site.film | sort: 'date' | reverse %}
{% for film_post in film_posts %}
- [{{film_post.title}}]({{site.url}}{{film_post.url}}) –– {{film_post.date | date: "%-d %b %Y"}}
{% endfor %}
