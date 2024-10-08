SELECT bikeid, start_station_name, end_station_name,
    birth_year, gender, tripduration
FROM {{ ref('citi_trips_round') }}
WHERE trip_min_round < 10





