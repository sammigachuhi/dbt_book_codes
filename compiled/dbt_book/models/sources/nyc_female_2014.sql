WITH nyc_female_2014 AS (
    SELECT * FROM 
        `dbt-project-437116`.`nyc_bikes_nyc_bikes2014`.`2014-tripdata`
    WHERE gender = 2
)

SELECT * FROM nyc_female_2014