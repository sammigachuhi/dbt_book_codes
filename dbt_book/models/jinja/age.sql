{% set years = [1995, 1997, 2002] %}

SELECT birth_year, 
{% for year in years %}
SUM (CASE WHEN birth_year = {{ year }} THEN trip_min_round ELSE 0 END) AS trip_min_round_{{ year }},
{% endfor %}
SUM(trip_min_round) AS totals_trip_min_round
FROM {{ ref('citi_trips_long') }}
GROUP BY birth_year





