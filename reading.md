---
layout: default
title: Reading
permalink: /reading/
---

{% assign books = site.reading | sort: 'date' | reverse %}
{% for book in books %}
<div class="two-cols-container">
<div class="left-column">
{{ book.date | date: "%B %-d, %Y" }}<br/>
</div>
<div class="right-column">
<span><a href="{{ site.url }}{{ book.url }}">{{ book.title }}</a> by {{ book.author }}</span><br/>
<span>{% for num in (1..book.stars) %}★{% endfor %}</span>
<span>{{ book.brief }}</span>
</div>
</div>
{% endfor %}