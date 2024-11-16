

  create or replace view `dbt-project-437116`.`nyc_bikes`.`age`
  OPTIONS()
  as 

SELECT birth_year, 

SUM (CASE WHEN birth_year = 1995 THEN trip_min_round ELSE 0 END) AS trip_min_round_1995,

SUM (CASE WHEN birth_year = 1997 THEN trip_min_round ELSE 0 END) AS trip_min_round_1997,

SUM (CASE WHEN birth_year = 2002 THEN trip_min_round ELSE 0 END) AS trip_min_round_2002,

SUM(trip_min_round) AS totals_trip_min_round
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
GROUP BY birth_year;

