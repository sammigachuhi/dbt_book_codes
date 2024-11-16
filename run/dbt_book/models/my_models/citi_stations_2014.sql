

  create or replace view `dbt-project-437116`.`nyc_bikes`.`citi_stations_2014`
  OPTIONS()
  as 

WITH citi_stations_2014 AS (
    SELECT * FROM `dbt-project-437116`.`nyc_bikes`.`2014-tripdata`
    WHERE `start station name` IN (
        SELECT start_station_name FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
    )
)

SELECT * FROM citi_stations_2014;

