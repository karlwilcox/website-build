---
layout: review-list
---

# List of Major Authors

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

{% assign initial = "A" %}
<p id="toA">A</p>
<ul>
{% for author_data in site.data.authors %}
{% capture author_ref %}{{ author_data }}{% endcapture %}
{% assign url_part = author_ref | split: '{' | first %}
{% assign this_initial = author_data[1].surname | slice: 0 %}
{% unless initial == this_initial %}
{% assign initial = this_initial %}
</ul>
<p id="to{{ initial }}">{{ initial }}</p>
<ul>
{% endunless %}
<li><a href="/author/{{ url_part }}/">{{ author_data[1].forename }} {{ author_data[1].surname }}</a></li>
{% endfor %}
</ul>
