

SELECT * FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE LENGTH(start_station_name) > 15 
