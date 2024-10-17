SELECT * FROM 
{{ source('nyc_bikes_nyc_bikes2014', '2014-tripdata') }}
WHERE gender = 1




