---
layout: page
permalink: /teaching/
title: teaching
description: Teaching and student supervision.
nav: true
nav_order: 4
---

<div class="teachings">
{% if site.collections.teachings and site.collections.teachings.output %}
  {% assign teachings = site.teachings | sort: "year" | reverse %}
  {% for teaching in teachings %}
    <h3>{{ teaching.year }}</h3>
    <p>{{ teaching.content | markdownify }}</p>
  {% endfor %}
{% endif %}
</div>

## Prospective Students

The research group welcomes 2 master's students for the 2026 intake.

**Admissions:**
- **Major:** Signal and Information Processing (081002)
- **Directions:** Spatiotemporal Big Data Mining; Intelligent Modeling, Simulation and Digital Twin

**Requirements:**
- Background in AI, remote sensing, or GIS
- Strong programming skills preferred
- Recommendations from advisors are a plus

Please contact [fanzd@aircas.ac.cn](mailto:fanzd@aircas.ac.cn) for inquiries.

## Supervised Students

| Year | Student | Program |
|------|---------|---------|
| 2021 | Yi Xin | Master, Signal & Information Processing |
| 2022 | Feilong Huang | Master, Signal & Information Processing |
| 2023 | Pengfei Li | Master, Signal & Information Processing |
| 2023 | Haohua Wu | Master, Electronic Information |
| 2024 | Jie Huang | Master, Signal & Information Processing |
| 2025 | Kaixin Zhang | Master, Signal & Information Processing |
| 2025 | Junhao Fan | Master, Signal & Information Processing |
| 2026 | Jiahui Yuan | Master, Signal & Information Processing |
