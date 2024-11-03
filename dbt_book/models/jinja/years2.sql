{% set years = [1995, 1997, 2002] %}


SELECT * 
FROM {{ ref('citi_trips_long') }}

WHERE birth_year IN (
    {% for year in years %}
    
    {{ year }}
    {% if not loop.last %},{% endif %}
    {% endfor %}

)





