SELECT cs.`start station id`, cs.`start station name`, 
ct.bikeid, ct.start_station_id, ct.trip_min_round 
FROM `dbt-project-437116`.`nyc_bikes_nyc_bikes2014`.`2014-tripdata` cs 
JOIN `dbt-project-437116`.`nyc_bikes`.`citi_trips_round` ct 
ON cs.`start station id` = ct.start_station_id
WHERE ct.trip_min_round > 50000;