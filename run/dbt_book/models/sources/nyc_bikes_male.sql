

  create or replace view `dbt-project-437116`.`nyc_bikes`.`nyc_bikes_male`
  OPTIONS()
  as SELECT * FROM 
`dbt-project-437116`.`nyc_bikes`.`citi_trips_round`
WHERE gender = "male";

