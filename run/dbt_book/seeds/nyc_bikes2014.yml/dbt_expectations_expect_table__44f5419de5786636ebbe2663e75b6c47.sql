select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
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

      
    ) dbt_internal_test