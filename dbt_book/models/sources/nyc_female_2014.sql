WITH nyc_female_2014 AS (
    SELECT * FROM 
        {{ source('nyc_bikes_nyc_bikes2014', '2014-tripdata') }}
    WHERE gender = 2
)

SELECT * FROM nyc_female_2014


