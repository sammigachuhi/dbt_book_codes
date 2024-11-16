select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
SELECT * FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
WHERE start_station_name
LIKE '%^[a-zA-Z0-9+-]%'

      
    ) dbt_internal_test