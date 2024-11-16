

with all_values as (

    select
        gender as value_field

    from `dbt-project-437116`.`nyc_bikes`.`citi_trips_minutes`
    

),
set_values as (

    select
        cast('unknown' as string) as value_field
    union all
    select
        cast('male' as string) as value_field
    union all
    select
        cast('female' as string) as value_field
    
    
),
validation_errors as (
    -- values from the model that are not in the set
    select
        v.value_field
    from
        all_values v
        left join
        set_values s on v.value_field = s.value_field
    where
        s.value_field is null

)

select *
from validation_errors

