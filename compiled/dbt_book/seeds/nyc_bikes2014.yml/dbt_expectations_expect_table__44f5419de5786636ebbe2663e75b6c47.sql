with test_data as (

    select
        16 as number_actual_columns,
        1 as min_value,
        0 as max_value

)
select *
from test_data
where
    not 
( 1=1 and number_actual_columns >= min_value
)
