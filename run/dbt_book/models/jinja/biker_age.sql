

  create or replace view `dbt-project-437116`.`nyc_bikes`.`biker_age`
  OPTIONS()
  as SELECT *, 


(EXTRACT( YEAR FROM CURRENT_DATE() ) - birth_year) 

 AS AGE
FROM 
`dbt-project-437116`.`nyc_bikes`.`citi_trips_long`;

