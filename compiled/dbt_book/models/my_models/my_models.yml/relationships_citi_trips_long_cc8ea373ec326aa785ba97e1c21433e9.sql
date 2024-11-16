
    
    

with child as (
    select end_station_name as from_field
    from `dbt-project-437116`.`nyc_bikes`.`citi_trips_long`
    where end_station_name is not null
),

parent as (
    select end_station_name as to_field
    from `dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


