-- Use the `ref` function to select from other models

select *
from `dbt-project-437116`.`nyc_bikes`.`my_first_dbt_model`
where id = 1