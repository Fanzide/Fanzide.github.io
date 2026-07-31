---
layout: page
permalink: /teaching/
title: teaching
description: Teaching and student supervision.
nav: true
nav_order: 4
AIGC:
  ContentProducer: '001191110102MAD55U9H0F10002'
  ContentPropagator: '001191110102MAD55U9H0F10002'
  Label: '1'
  ProduceID: '01d7a1de-e6ee-4d14-b0e7-2d6b1d45dc99'
  PropagateID: '01d7a1de-e6ee-4d14-b0e7-2d6b1d45dc99'
  ReservedCode1: '8f1c28bc-e33a-4132-8569-b6ff6c2cdd4a'
  ReservedCode2: '8f1c28bc-e33a-4132-8569-b6ff6c2cdd4a'
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
| 2021 | 辛艺 / Yi Xin | Master, Signal & Information Processing |
| 2022 | 黄飞龙 / Feilong Huang | Master, Signal & Information Processing |
| 2023 | 李鹏飞 / Pengfei Li | Master, Signal & Information Processing |
| 2023 | 吴浩华 / Haohua Wu | Master, Electronic Information |
| 2024 | 黄杰 / Jie Huang | Master, Signal & Information Processing |
| 2025 | 张开心 / Kaixin Zhang | Ph.D, Signal & Information Processing |
| 2025 | 范俊豪 / Junhao Fan | Master, Signal & Information Processing |
| 2026 | 袁佳慧 / Jiahui Yuan | Master, Signal & Information Processing |

> AI生成