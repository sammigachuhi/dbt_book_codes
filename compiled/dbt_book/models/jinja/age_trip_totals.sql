

SELECT birth_year, 
SUM(trip_min_round) AS totals_trip_min_round
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE birth_year IN (
  
  
    1990, 
  
  
    1996, 
  
  
    1998, 
  
  
    2001, 
  
  
    2002
  
)
GROUP BY birth_year
ORDER BY birth_year DESC

