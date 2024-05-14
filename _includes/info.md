<div class="author">
{% for author in site.data.info.authors %}
    {% if author.first_author %}
        {% if author.url %}
            <span><a href="{{ author.url }}" target="_blank">{{ author.name }}<sup>*</sup></a>&ensp;</span>
        {% else %}
            <span>{{ author.name }}<sup>*</sup>&ensp;</span>
        {% endif %}
    {% else %}
        {% if author.url %}
                <span><a href="{{ author.url }}" target="_blank">{{ author.name }}</a>&ensp;</span>
            {% else %}
                <span>{{ author.name }}&ensp;</span>
            {% endif %}
    {% endif %}
{% endfor %}
</div>

<div style="text-align:center;">
    {% for institute in site.data.info.institutes %}
    <span> {{ institute.name }} </span><br>
    {% endfor %}
</div>

<div style="text-align:center; font-style:italic; font-weight:bold">
    {% for conference in site.data.info.conference %}
    <span> {{ conference.name }} {{ conference.location }} </span><br>
    {% endfor %}
    <br>
</div>

<div style="text-align:center; font-size:large">
<a style="margin: 0 20px 0 0;" href="{{ site.paper_link }}">
          <i class="fas fa-file-pdf" ></i> Paper 
        </a>
<a style="margin: 0 20px 0 0;" href="{{ site.github_link }}">
          <i class="fab fa-github" ></i> Dataset 
        </a>
<a style="margin: 0 0px 0 0;" href="{{ site.supplementary }}">
          <i class="fas fa-layer-group" ></i> Supplementary Files 
        </a>
</div>


<br>

