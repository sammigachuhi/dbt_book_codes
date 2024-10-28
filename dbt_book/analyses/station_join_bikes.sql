
WITH `2014-tripdata` AS (
    SELECT * FROM {{ source('nyc_bikes_nyc_bikes2014', '2014-tripdata') }}
), 

WITH citi_trips_round AS (
    SELECT * FROM {{ source('nyc_bikes', 'citi_trips_round') }}
)

SELECT cs.`start station id`, cs.`start station name`, 
ct.bikeid, ct.start_station_id, ct.trip_min_round 
FROM `2014-tripdata` cs 
JOIN citi_trips_round ct 
ON cs.`start station id` = ct.start_station_id
WHERE ct.trip_min_round > 50000





