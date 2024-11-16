

  create or replace view `dbt-project-437116`.`nyc_bikes`.`nyc_male_2014`
  OPTIONS()
  as SELECT * FROM 
`dbt-project-437116`.`nyc_bikes_nyc_bikes2014`.`2014-tripdata`
WHERE gender = 1;

