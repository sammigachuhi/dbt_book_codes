{% test excluded(model, column_name, field, to) %}

WITH parent AS (
    SELECT 
        {{ start_station_name }} AS ID  
    FROM {{ to }}
),

child AS (
    SELECT 
        {{ column_name }} AS start_station_name
    FROM {{ model }}
)

SELECT *
FROM child
WHERE start_station_name IS NOT NULL 
AND start_station_name NOT IN 
(SELECT start_station_name FROM parent)

{% endtest %}