
    
    

with all_values as (

    select
        gender as value_field,
        count(*) as n_records

    from `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
    group by gender

)

select *
from all_values
where value_field not in (
    'unknown','male','female'
)


