




    with grouped_expression as (
    select
        
        
    
  _id is not null as expression


    from `dbt-project-437116`.`nyc_bikes_nyc_bikes2014`.`2014-tripdata`
    

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



