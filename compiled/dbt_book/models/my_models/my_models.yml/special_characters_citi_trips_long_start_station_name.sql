
SELECT * FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE start_station_name
LIKE '%^[a-zA-Z0-9+-]%'
