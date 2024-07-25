##Data cleaning
## NULLS(This statement removed 195,057 rows from annual_tripdata.)
DELETE FROM onyx-seeker-426111-i4.casestudy_1.annual_tripdata
WHERE ride_id IS NULL
   OR rideable_type IS NULL
   OR started_at IS NULL
   OR ended_at IS NULL
   OR start_station_name IS NULL
   OR start_station_id IS NULL
   OR end_station_name IS NULL
   OR end_station_id IS NULL
   OR start_lat IS NULL
   OR start_lng IS NULL
   OR end_lat IS NULL
   OR end_lng IS NULL
   OR member_casual IS NULL
   OR ride_length IS NULL
   OR day_of_week IS NULL;

##ride_length adding column
ALTER TABLE `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
ADD COLUMN ride_length INT64;

##ride_length values
UPDATE `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
SET ride_length=TIMESTAMP_DIFF(ended_at,started_at,MINUTE)
WHERE TRUE;
## Ride_length cleaning(This statement removed 3,331 rows from annual_tripdata.)
DELETE FROM onyx-seeker-426111-i4.casestudy_1.annual_tripdata
WHERE ride_length < 0 OR ride_length > 1440;


##day_of_week adding column
ALTER TABLE `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
ADD COLUMN day_of_week STRING;

## day_of_week values
UPDATE `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
SET day_of_week = CASE
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 1 THEN 'Sunday'
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 2 THEN 'Monday'
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 3 THEN 'Tuesday'
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 4 THEN 'Wednesday'
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 5 THEN 'Thursday'
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 6 THEN 'Friday'
WHEN EXTRACT(DAYOFWEEK FROM started_at) = 7 THEN 'Saturday'
ELSE 'unknown'
END
WHERE started_at IS NOT NULL;


