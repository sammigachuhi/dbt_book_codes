{% set years = [1995, 1997, 2002] %}

SELECT birth_year, 
SUM(trip_min_round) AS totals_trip_min_round
FROM {{ ref('citi_trips_long') }}
WHERE birth_year IN (
  {% for year in years %}
  {# this will separate the years 1995, 1997 and 2002 with a comma, nothing out of this world #}
    {{ year }}{% if not loop.last %}, {% endif %}
  {% endfor %}
)
GROUP BY birth_year
