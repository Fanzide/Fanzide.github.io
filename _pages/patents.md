---
layout: page
permalink: /patents/
title: patents
description: Invention patents in reversed chronological order.
nav: true
nav_order: 3
---

<div class="patents">
  <p class="text-center" style="margin-bottom: 1.5rem;">
    <strong>{{ site.data.patents | size }}</strong> invention patents
  </p>

  {% assign sorted_patents = site.data.patents | sort: 'pub_date' | reverse %}

  {% assign current_year = '' %}
  {% for patent in sorted_patents %}
    {% assign patent_year = patent.pub_date | slice: 0, 4 %}
    {% if patent_year != current_year %}
      {% assign current_year = patent_year %}
      <h2 class="year-header">{{ current_year }}</h2>
    {% endif %}

    <div class="patent-item" style="margin-bottom: 1rem; padding-bottom: 1rem; border-bottom: 1px solid var(--global-divider-color, #eee);">
      <div style="font-weight: bold; font-size: 1rem;">
        {{ patent.title }}
      </div>
      <div style="color: var(--global-text-color-light, #666); font-size: 0.9rem; margin-top: 0.25rem;">
        <span class="patent-id">{{ patent.patent_id }}</span>
        &middot; Published: {{ patent.pub_date }}
        &middot; Filed: {{ patent.app_date }}
      </div>
      <div style="color: var(--global-text-color-light, #666); font-size: 0.85rem; margin-top: 0.15rem;">
        Application: {{ patent.app_id }}
      </div>
      <div style="font-size: 0.85rem; margin-top: 0.15rem;">
        Inventors: {{ patent.inventors }}
      </div>
    </div>
  {% endfor %}
</div>
