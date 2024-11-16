select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT bikeid, start_station_name, end_station_name,
    birth_year, gender, tripduration
FROM `dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
WHERE trip_min_round < 10
      
    ) dbt_internal_test