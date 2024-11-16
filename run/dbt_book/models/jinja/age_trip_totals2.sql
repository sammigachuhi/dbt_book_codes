

  create or replace view `dbt-project-437116`.`nyc_bikes`.`age_trip_totals2`
  OPTIONS()
  as 

SELECT AGE, 
SUM(trip_min_round) AS totals_trip_min_round
FROM `dbt-project-437116`.`nyc_bikes`.`biker_age`
WHERE AGE IN (
  
  
    22, 
  
  
    27, 
  
  
    29
  
)
GROUP BY AGE
ORDER BY AGE DESC

;

