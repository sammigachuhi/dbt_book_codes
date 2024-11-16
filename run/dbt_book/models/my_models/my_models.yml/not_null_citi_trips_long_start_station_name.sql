select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select start_station_name
from `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
where start_station_name is null



      
    ) dbt_internal_test