{{ config(materialized='view') }}

WITH citi_trips AS (
    SELECT *, 
    tripduration / 60 AS trip_duration_min
    FROM 
    `dbt-project-437116.nyc_bikes.citibike_trips` 
)

SELECT * FROM citi_trips



