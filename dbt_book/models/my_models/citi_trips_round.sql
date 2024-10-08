{{ config(materialized='view') }}

WITH citi_trips_round AS (
    SELECT *, ROUND(trip_duration_min, 1) AS trip_min_round
    FROM (
        SELECT *, 
        tripduration / 60 AS trip_duration_min
        FROM 
        `dbt-project-437116.nyc_bikes.citibike_trips`
        ) 
    WHERE tripduration IS NOT NULL
)

SELECT * FROM citi_trips_round



