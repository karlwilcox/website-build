---
layout: page
title: "List of Mini Review Titles"
subheadline: ""
teaser: ""
header:
  image_fullwidth: "gp-header"
---

## Titles of All Books with a Full Review
{% assign reviews = site.data.shorts | sort: "title" %}
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
{% case item.month %}
{% when "Jan" %}
{% assign period = "Q1" %}
{% when "Feb" %}
{% assign period = "Q1" %}
{% when "Mar" %}
{% assign period = "Q1" %}
{% when "Apr" %}
{% assign period = "Q2" %}
{% when "May" %}
{% assign period = "Q2" %}
{% when "Jun" %}
{% assign period = "Q2" %}
{% when "Jul" %}
{% assign period = "Q3" %}
{% when "Aug" %}
{% assign period = "Q3" %}
{% when "Sep" %}
{% assign period = "Q3" %}
{% when "Oct" %}
{% assign period = "Q4" %}
{% when "Nov" %}
{% assign period = "Q4" %}
{% when "Dec" %}
{% assign period = "Q4" %}
{% else %}
{% assign period = "Q?" %}
{% endcase %}
{% capture shorts_url %}
/reviews/shorts/short-reviews-{{ item.year }}-{{ period }}/
{% endcapture %}
    <li>{include icon shape={{ item.type }} <a href="{{ site.url }}{{ site.baseurl }}{{ shorts_url }}">{{ item.title }}</a>
{% if item.creator %}
({{ item.creator }})
{% endif %}
</li>
{% endfor %}
</ul>
