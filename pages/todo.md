---
layout: page
title: "Todo"
subheadline: "Build Issues To Be Fixed"
teaser: "Only of interest to site maintainer"
permalink: "/todo/"
header:
    image_fullwidth: "headers/info.jpg"
---

This page is largely for administrator use, listing drafts, missing items
or any other errors noted.

## Missing Review Thumbnails

{% for post in site.posts %}
          {% if post.categories[0] == "blog" or post.categories[1] == "shorts" %}
              {% continue %}
          {% else %}
              {% capture thumb_path %}{{ site.urlimg }}reviews/{{ post.categories[1] }}/thumbs/{{ post.slug }}.jpg{% endcapture %}
          {% endif %}
          {% assign found = false %}
          {% for img_file in site.static_files %}
            {% if img_file.path == thumb_path %}
                {% assign found = true %}
                {% continue %}
            {% endif %}
          {% endfor %}
          {% if found == false %}
- {{ thumb_path }} for {{ post.name }}
          {% endif %}
{% endfor %}

## Reviews Using Generic Image

{% for page in site.posts %}
          {% if page.categories[0] == "blog" or page.categories[1] == "shorts" %}
              {% continue %}
          {% else %}
            {% if page.picture %}
                {% capture img_path %}{{ site.urlimg }}reviews/{{ page.categories[1] }}/{{ page.picture }}.jpg{% endcapture %}
            {% else %}
                {% capture img_path %}{{ site.urlimg }}reviews/{{ page.categories[1] }}/{{ page.slug }}.jpg{% endcapture %}
            {% endif %}
          {% endif %}
          {% assign found = false %}
          {% for img_file in site.static_files %}
            {% if img_file.path == img_path %}
                {% assign found = true %}
                {% continue %}
            {% endif %}
          {% endfor %}
          {% if found == false %}
- {{ img_path }} for {{ page.name }}
          {% endif %}
{% endfor %}

## Draft Short Reviews

{% for file_list in site.data.shorts %}
{% for item in file_list[1] %}
{% if item.type == "draft" %}
- {{ item.title }}
{% endif %}
{% endfor %}
{% endfor %}

## Draft Long Reviews

{% for draft in site.drafts %}
- {{ draft.name }}
{% endfor %}

## Tags With a Single Instance

<p>
{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tags_list = site_tags | split:',' | sort_natural %}
{% for item in (0..site.tags.size) %}
{% capture tag %}{{ tags_list[item] | strip_newlines }}{% endcapture %}
{% assign count = 0 %}
{% for article in site.categories['reviews'] %}
{% if article.tags contains tag %}
{% capture count %}{{ count | plus: 1 }}{% endcapture %}
{% endif %}
{% endfor %}
{% assign count = count | plus: 0 %}
{% if count <= 1 %}
    {{ tag }},
{% endif %}
{% endfor %}
</p>

## Other Items

(In data/todo.yml)

{% for item in site.data.todo.general %}
- {{ item }}
{% endfor %}
