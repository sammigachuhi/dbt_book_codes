{% macro age_trips (column, duration, table_name, years = [1995, 1997, 2002]) %}

SELECT {{ column }}, 
SUM({{ duration }}) AS totals_trip_min_round
FROM {{ ref( table_name ) }}
WHERE {{ column }} IN (
  {% for year in years %}
  {# this will separate the years 1995, 1997 and 2002 with a comma, nothing out of this world #}
    {{ year }}{% if not loop.last %}, {% endif %}
  {% endfor %}
)
GROUP BY {{ column }}
ORDER BY {{ column }} DESC

{% endmacro %}












