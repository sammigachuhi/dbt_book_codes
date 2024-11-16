select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    with a as (
        
    select
        
        count(*) as expression
    from
        `dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
    

    ),
    b as (
        
    select
        
        count(*) * 1 as expression
    from
        `dbt-project-437116`.`nyc_bikes`.`citi_trips_minutes`
    

    ),
    final as (

        select
            
            a.expression,
            b.expression as compare_expression,
            abs(coalesce(a.expression, 0) - coalesce(b.expression, 0)) as expression_difference,
            abs(coalesce(a.expression, 0) - coalesce(b.expression, 0))/
                nullif(a.expression * 1.0, 0) as expression_difference_percent
        from
        
            a cross join b
        
    )
    -- DEBUG:
    -- select * from final
    select
        *
    from final
    where
        
        expression_difference > 0.0
        

      
    ) dbt_internal_test