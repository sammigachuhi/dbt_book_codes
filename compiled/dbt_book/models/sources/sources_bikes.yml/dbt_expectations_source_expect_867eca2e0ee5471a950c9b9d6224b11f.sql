




    with grouped_expression as (
    select
        
        
    
  
( 1=1 and max(trip_min_round) >= 16 and max(trip_min_round) <= 100000
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





