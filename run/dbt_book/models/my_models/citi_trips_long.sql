

  create or replace view `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
  OPTIONS()
  as 

WITH citi_trips_long AS (
    SELECT * FROM (
        SELECT c1.starttime, c1.stoptime, c1.start_station_name, c1.end_station_name, c1.gender, c1.trip_duration_min,
        c2.birth_year, c2.customer_plan, c2.trip_min_round
        FROM 
            `dbt-project-437116`.`nyc_bikes`.`citi_trips_minutes` AS c1
        JOIN `dbt-project-437116`.`nyc_bikes`.`citi_trips_round` AS c2
        ON c1.start_station_id = c2.start_station_id AND c1.starttime = c2.starttime AND c1.stoptime = c2.stoptime
        WHERE c2.trip_min_round >= 16
    )
    
)

SELECT * FROM citi_trips_long;
