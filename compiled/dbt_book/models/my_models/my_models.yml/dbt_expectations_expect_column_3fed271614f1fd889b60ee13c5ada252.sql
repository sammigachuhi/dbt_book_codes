





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and length(
        end_station_name
    ) >= 1 and length(
        end_station_name
    ) <= 40
)
 as expression


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






