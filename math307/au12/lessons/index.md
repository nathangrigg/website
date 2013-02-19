---
title: Lessons
layout: 307au12
section: Lessons
---

The number and letter give the week and day we will follow up on the lesson in class. For example, 3F means Friday of week 3.

<hr class="separator">

{% for post in site.categories.au12 reversed %}
{% if post.categories contains "math307" and post.categories contains "lessons" %}
{% include lesson2.html %}
{% endif %}
{% endfor %}
