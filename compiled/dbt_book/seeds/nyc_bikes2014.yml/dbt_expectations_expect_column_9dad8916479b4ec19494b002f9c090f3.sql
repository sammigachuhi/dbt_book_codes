




with validation_errors as (

    select
        _id,
        count(*) as `n_records`
    from `dbt-project-437116`.`nyc_bikes_nyc_bikes2014`.`2014-tripdata`
    where
        1=1
        and 
    not (
        _id is null
        
    )


    
    group by
        _id
    having count(*) > 1

)
select * from validation_errors

