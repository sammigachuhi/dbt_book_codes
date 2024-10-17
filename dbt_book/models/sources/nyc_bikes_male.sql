SELECT * FROM 
{{ source('nyc_bikes', 'citi_trips_round') }}
WHERE gender = "male"