{{ config(
    materialized="table",
    schema="nyc_bikes_nyc_bikes2014"
) }}

WITH nyc_bikes_timestamp AS (
  SELECT *, CURRENT_TIMESTAMP() AS updated_at FROM {{ source('nyc_bikes_nyc_bikes2014', '2014-tripdata') }}
)

SELECT
  *
FROM nyc_bikes_timestamp