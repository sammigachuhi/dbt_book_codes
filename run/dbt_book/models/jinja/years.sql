

  create or replace view `dbt-project-437116`.`nyc_bikes`.`years`
  OPTIONS()
  as 


SELECT * 
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE birth_year = 1995



SELECT * 
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE birth_year = 1997



SELECT * 
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE birth_year = 2002


;

