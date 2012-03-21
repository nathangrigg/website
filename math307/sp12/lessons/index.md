---
title: Lessons
layout: 307sp12
section: Lessons
---

Please read/watch/do each lesson before coming to class. Click the title to see the lesson.

The number and letter give the week and day we will follow up on the lesson in class. For example, 3F means Friday of week 3.

<hr class="separator">

Lessons will be posted here once class begins. There are currently no lessons.

{% for post in site.categories.sp12 %}
{% if post.categories contains "math307" and post.categories contains "lessons" %}
{% include lesson2.html %}
{% endif %}
{% endfor %}