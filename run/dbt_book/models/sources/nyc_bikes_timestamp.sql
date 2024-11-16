
  
    

    create or replace table `dbt-project-437116`.`nyc_bikes_nyc_bikes_nyc_bikes2014`.`nyc_bikes_timestamp`
      
    
    

    OPTIONS()
    as (
      

WITH nyc_bikes_timestamp AS (
  SELECT *, CURRENT_TIMESTAMP() AS updated_at FROM `dbt-project-437116`.`nyc_bikes_nyc_bikes2014`.`2014-tripdata`
)

SELECT
  *
FROM nyc_bikes_timestamp
    );
  