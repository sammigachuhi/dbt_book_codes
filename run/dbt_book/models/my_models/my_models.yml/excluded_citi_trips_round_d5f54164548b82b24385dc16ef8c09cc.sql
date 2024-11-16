select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

WITH parent AS (
    SELECT 
         AS ID  
    FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
),

child AS (
    SELECT 
        start_station_name AS start_station_name
    FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
)

SELECT *
FROM child
WHERE start_station_name IS NOT NULL 
AND start_station_name NOT IN 
(SELECT start_station_name FROM parent)


      
    ) dbt_internal_test