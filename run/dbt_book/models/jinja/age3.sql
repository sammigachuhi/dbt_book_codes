

  create or replace view `dbt-project-437116`.`nyc_bikes`.`age3`
  OPTIONS()
  as 

SELECT birth_year, 
SUM(trip_min_round) AS totals_trip_min_round
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE birth_year IN (
  
  
    1995, 
  
  
    1997, 
  
  
    2002
  
)
GROUP BY birth_year;

