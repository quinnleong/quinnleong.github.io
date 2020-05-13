---
layout: default
title: Writing
permalink: /writing/
---
{% for post in site.posts %}
  - [{{post.title}}]({{site.url}}{{site.baseurl | relative_url}}{{post.url}})
{% endfor %}
