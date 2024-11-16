SELECT bikeid, start_station_name, end_station_name,
    birth_year, gender, tripduration
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
WHERE trip_min_round < 10