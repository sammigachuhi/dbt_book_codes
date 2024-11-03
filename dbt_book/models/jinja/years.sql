{% set years = [1995, 1997, 2002] %}

{% for year in years %}
SELECT * 
FROM {{ ref('citi_trips_long') }}
WHERE birth_year = {{ year }}


{% endfor %}






