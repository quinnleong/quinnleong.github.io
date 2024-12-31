---
layout: default
title: Coffee Journal
permalink: /coffee/
---
## Coffee Journal
{% assign coffee = site.coffee | sort: 'date' %}
{% for c in coffee %}
<div class="coffee-wrapper" markdown="1">
![]({{c.photo_url}}){:.coffee-img}
  <div class="coffee-info">
    <br/>
    <h5>{{ c.date | date: "%-d %B %Y" }}</h5>
    <h3 class="coffee-header">{{c.name}} — {{c.roaster}}</h3>
    <br/>
    {% for num in (1..c.cups) %}☕{% endfor %}
    <br/>
    <h4>Roast: {{c.roast}} / 10<br/></h4>
    <br/>
    <br/>
    {{c.taste}}
    <p>
    {{c.taste_detail}}
    <br/><br/><br/>
    </p>
  </div>
</div>
{% endfor %}
