---
layout: page
header:
  image_fullwidth: "gp-header"
---

# List of Book Titles

This is a list of titles of all books with a full review.

Additionally there are some shorter or abandonded books that I didn't have a great deal to say
about so these are included in the [short reviews](/reviews/shorts/). You can
use the [Search Page](/search/) to find a specific title, or look at the alphabetical list of all
[short review titles](/reviews/shorts/titles/), where books are marked with an appropriate icon.

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

{%- assign reviews = site.categories.books | sort: "title" -%}
{%- assign initial = "" -%}
<ul>
{%- for item in reviews -%}
{%- assign this_initial = item.title | slice: 0 -%}
{%- unless initial == this_initial -%}
{%- assign initial = this_initial -%}
</ul>
<p id="to{{ initial }}">{{ initial }}</p>
<ul>
{%- endunless -%}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ item.url }}">{{ item.prefix }} {{ item.title }}</a>
{%- if item.author != "" and item.author != Nil and item.author != "karlw" -%}
{%- assign author_data = site.data.authors[item.author] -%}
&nbsp;(<a href="/reviews/books/author/{{ item.author }}/">{{ author_data.forename }} {{ author_data.surname }}</a>
{%- if item.author2 != "" and item.author2 != Nil -%}
  {%- assign author_data = site.data.authors[item.author2] -%}
  &nbsp;{{ site.data.text.conjunction }}
  <a href="/reviews/books/author/{{ item.author2 }}/">{{ author_data.forename }} {{ author_data.surname }}</a>
{%- endif -%}
)
{% include _tags_to_buttons.html tags=item.tags separator="&MediumSpace;" wrap="span" button="taglink"%}
{%- else -%}
  {%- if item.subtitle != "" and item.subtitle != Nil -%}
  ({{ item.subtitle }})
  {%- endif -%}
{%- endif -%}
</li>
{%- endfor -%}
</ul>
