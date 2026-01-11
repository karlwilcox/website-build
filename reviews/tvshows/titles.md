---
layout: page
title: "List of TV Show Titles"
subtitle: ""
/reviewsheader:
  image_fullwidth: "gp-header"
---

## Titles of TV Shows with a Full Review
{% assign reviews = site.categories.tvshows | sort: "title" %}
<p>
    <a href="#toA">&nbsp;A&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toB">&nbsp;B&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toC">&nbsp;C&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toD">&nbsp;D&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toE">&nbsp;E&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toF">&nbsp;F&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toG">&nbsp;G&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toH">&nbsp;H&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toI">&nbsp;I&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toJ">&nbsp;J&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toK">&nbsp;K&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toL">&nbsp;L&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toM">&nbsp;M&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toN">&nbsp;N&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toO">&nbsp;O&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toP">&nbsp;P&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toQ">&nbsp;Q&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toR">&nbsp;R&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toS">&nbsp;S&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toT">&nbsp;T&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toU">&nbsp;U&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toV">&nbsp;V&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toW">&nbsp;W&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toX">&nbsp;X&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toY">&nbsp;Y&nbsp;</a>&nbsp;|&nbsp;
    <a href="#toZ">&nbsp;Z&nbsp;</a>
</p>
{% assign initial = "" %}
<ul>
{% for item in reviews %}
{% assign this_initial = item.title | slice: 0 %}
{% unless initial == this_initial %}
{% assign initial = this_initial %}
</ul>
<p id="to{{ initial }}">{{ initial }}</p>
<ul>
{% endunless %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ item.url }}">{{ item.prefix }} {{ item.title }}</a>
{% if item.season %}
(Season {{ item.season }})
{% endif %}
</li>
{% endfor %}
</ul>
