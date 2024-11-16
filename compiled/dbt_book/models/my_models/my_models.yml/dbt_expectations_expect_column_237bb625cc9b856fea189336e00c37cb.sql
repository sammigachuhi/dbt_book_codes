




    with grouped_expression as (
    select
        
        
    
  start_station_id is not null as expression


    from `dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors



