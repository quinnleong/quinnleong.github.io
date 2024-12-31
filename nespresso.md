---
layout: default
title: Nespresso Journal
permalink: /nespresso/
---
## Nespresso Journal
{% assign nespresso = site.nespresso | sort: 'pods' | reverse %}
{% for n in nespresso %}
  <br/>
  <h3>{{n.title}} // {% for num in (1..n.pods) %}☕{% endfor %} // {{n.tagline}}</h3>
  <em>{{n.taste}}</em>

  Intensity: {{n.intensity}}

  Best served as: {{n.best_served_as}}

  {{n.notes}}

  Bitterness: {{n.bitterness}}<br/>
  Acidity: {{n.acidity}}<br/>
  Roast Level: {{n.roast_level}}<br/>
  Body: {{n.body}}

  {{n.journal}}
{% endfor %}
