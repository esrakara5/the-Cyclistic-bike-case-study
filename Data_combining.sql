## UNION ALL 12 MONTHS trip data 2020.04-2021.03
CREATE TABLE `onyx-seeker-426111-i4.casestudy_1.annual_tripdata` AS
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_04_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_05_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_06_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_07_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_08_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_09_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_10_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_11_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2020_12_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2021_01_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2021_02_tripdata`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  CAST(start_station_id AS STRING) AS start_station_id, 
  end_station_name, 
  CAST(end_station_id AS STRING) AS end_station_id, 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng, 
  member_casual 
FROM `onyx-seeker-426111-i4.casestudy_1.2021_03_tripdata`;
