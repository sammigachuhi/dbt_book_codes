

  create or replace view `dbt-project-437116`.`nyc_bikes`.`years2`
  OPTIONS()
  as 


SELECT * 
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`

WHERE birth_year IN (
    
    
    1995
    ,
    
    
    1997
    ,
    
    
    2002
    
    

);

