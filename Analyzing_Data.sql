
### Aggregate functions
SELECT AVG(ride_length)as average_ride_length,MAX(ride_length) as max_ride_length,
  (SELECT day_of_week
  FROM(
    SELECT day_of_week,COUNT(*) as MODE
    FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
    GROUP BY day_of_week
    ORDER BY MODE
    LIMIT 1

  )) as mode_of_day_of_week

 FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
WHERE ride_length>0 AND ride_length<1440
## average ride length for members and casual riders
SELECT AVG(ride_length) as average_ride_length, 
member_casual
FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
GROUP BY member_casual
ORDER BY average_ride_length DESC

## average ride length for users by day_of_week
SELECT AVG(ride_length) as average_ride_length,
day_of_week,member_casual
FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
GROUP BY day_of_week,member_casual
ORDER BY day_of_week,average_ride_length DESC

## total number of rides for users by day_of_week
SELECT day_of_week,
COUNT(*) as total_rides,
member_casual
FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
GROUP BY day_of_week,member_casual
ORDER BY day_of_week,total_rides DESC
## member's bike preference
SELECT 
member_casual,rideable_type,
COUNT(ride_id) as total_ride 
FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
WHERE rideable_type IS NOT NULL AND member_casual = 'member'
GROUP BY rideable_type,member_casual
ORDER BY total_ride DESC
## stations that have most "member" riders
SELECT 
member_casual,start_station_name,end_station_name,
COUNT(ride_id) as total_ride 
FROM `onyx-seeker-426111-i4.casestudy_1.annual_tripdata`
WHERE start_station_name IS NOT NULL AND end_station_name IS NOT NULL AND member_casual = 'member'
GROUP BY start_station_name,end_station_name,member_casual
ORDER BY total_ride DESC
