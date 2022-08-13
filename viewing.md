---
layout: default
title: Viewing
permalink: /viewing/
---
{% assign films = site.viewing | sort: 'date' | reverse %}
{% for film in films %}- [{{film.title}}]({{site.url}}{{film.url}}) ~ {{film.director}}, {{film.year}} –– {% for num in (1..film.stars) %}★{% endfor %} –– {{film.date | date: "%-d %b %Y"}}
{% endfor %}
