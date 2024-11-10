# Cyclistic Bike Share Case Study
##### Prepared by Esra KARA.
This case study has been assigned to me as the capstone project in my Google Data Analytics course. The project utilizes SQL (BigQuery) and Tableau.
In order to answer the business questions, the steps of the data analysis process have been followed: [Ask](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Ask), [Prepare](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Prepare), [Process](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Process), [Analyze](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Analyze), [Share](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Share), and [Act](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Act).
## Scenario
You work as a junior data analyst on the marketing team at Cyclistic, a bike-share company based in Chicago. The director of marketing emphasizes the company's growth through maximizing annual memberships. Your team's objective is to analyze the differences in bike usage between casual riders and annual members at Cyclistic. Using these insights, you will develop a new marketing strategy aimed at converting casual riders into annual members. Before proceeding, your recommendations must gain approval from Cyclistic executives, supported by compelling data insights and professional data visualizations.
#### About Company
In 2016, Cyclistic launched a successful bike-share program that has since grown to a fleet of 5,824 bicycles, geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system at any time. Cyclistic's marketing strategy has focused on building general awareness and appealing to broad consumer segments. This approach has been supported by flexible pricing plans including single-ride passes, full-day passes, and annual memberships. Customers purchasing single-ride or full-day passes are categorized as casual riders, while those opting for annual memberships become Cyclistic members.
## Ask
Three questions will guide the future marketing program:

1.How do annual members and casual riders use Cyclistic bikes differently?

2.Why would casual riders buy Cyclistic annual memberships?

3.How can Cyclistic use digital media to influence casual riders to become members?

In the case study, the manager has assigned the first question, "How do annual members and casual riders use Cyclistic bikes differently?" and this question is being investigated.

My business task is to analyze and compare the usage patterns of Cyclistic bikes between annual members and casual riders. Additionally, develop marketing strategies to convert casual riders into members.
## Prepare
### Data Source
The project utilizes one year of data, from April 2020 to March 2021, which was downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) Due to data privacy issues, you are prohibited from using riders' personally identifiable information. This means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.


The dataset comprises 12 CSV files in long format, covering the period from April 2020 to March 2021. Each file includes 13 columns: ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, and member_casual.

## Process
BigQuery is utilized to combine the 12 datasets into a single dataset and perform data cleaning.

Due to the limitation in Microsoft Excel, where a worksheet can have a maximum of 1,048,576 rows, it is not suitable for managing large datasets. Given that the Cyclistic dataset contains over 5.6 million rows, it is essential to use a platform like BigQuery, which supports handling large volumes of data efficiently.
### Data Combining
You can access the combined 12-month dataset, referred to as annual_tripdata, through the following [SQL query](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Data_combining.sql).During the merging process, the CAST function was used to specify start_station_id and end_station_id as STRING data types.
### Data Cleaning
You can access the SQL queries for data cleaning through this [link](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Data_Cleaning.sql).
The data cleaning process begins by addressing the integrity of the annual_tripdata table. Initially, rows with any NULL values in critical columns are removed to ensure the dataset's completeness. This step eliminates records with missing information, thereby enhancing the reliability of subsequent analyses.

Following this, a new column named ride_length is introduced to capture the duration of each ride, measured in minutes. This column is of type INT64 and is essential for analyzing ride durations. The ride_length values are then calculated by computing the time difference, in minutes, between the ended_at and started_at timestamps for each ride.

To maintain data accuracy, any rows where ride_length falls below 0 minutes or exceeds 1440 minutes (equivalent to 24 hours) are removed. This ensures that only realistic and valid ride durations are included in the dataset.

Subsequently, another column, day_of_week, is added to record the day of the week on which each ride commenced. The values for this column are derived from the started_at timestamp, converting numerical day representations into their respective names (e.g., Sunday, Monday, etc.). This addition facilitates day-of-week analyses and enriches the dataset for more nuanced insights.


## Analyze
For detailed SQL queries used in this analysis, please refer to this [link](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Analyzing_Data.sql).

To derive meaningful insights from the Cyclistic dataset, various aggregate functions were utilized. Firstly, the average and maximum ride durations were computed, focusing on rides lasting between 1 and 1440 minutes. This provided a clear picture of typical and extreme ride lengths within a plausible range. Additionally, the analysis identified the most common day of the week for rides, offering valuable information on peak usage days.

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/agg_func.png)


Further exploration segmented average ride lengths by membership type, revealing distinct patterns between casual riders and members. This comparison highlighted the differing usage behaviors of these groups. The analysis was also extended to examine average ride durations across different days of the week, segmented by membership type, uncovering how riding habits vary throughout the week.

In terms of ride frequency, the total number of rides per day of the week was calculated for both members and casual riders. This aggregation provided insights into the busiest days for each user group. Additionally, the preferences of members regarding bike types were analyzed, showing which bike types were most popular among the membership cohort.

Finally, the dataset was explored to identify stations with the highest number of rides by members. This analysis pinpointed key locations that are frequently used by members, aiding in understanding station popularity and potential areas for operational improvements.



## Share

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/avg_ride_member_type.png) 

The analysis of the average ride length by member type reveals that casual riders have a significantly higher average ride length compared to annual members. This observation suggests that casual riders likely use Cyclistic bikes for leisurely or exploratory purposes, leading to longer ride durations. In contrast, annual members, who likely use the service more regularly for commuting or quick trips, tend to have shorter ride durations. This difference in average ride length highlights distinct usage patterns between casual and annual members, potentially driven by varying motivations and needs.

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/avg_ride_weekday.png)

The analysis of average ride length by day of the week reveals that both annual members and casual riders tend to have higher ride durations on weekends. This suggests that both groups use Cyclistic bikes for longer, likely recreational rides during weekends. While weekday usage may primarily focus on shorter, commute-oriented trips, weekends allow users to take more leisurely, extended rides.

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/bike_preference.png)

The "Bike Preference Distribution" chart shows that docked bikes are the most preferred type for both member categories. Following docked bikes, electric bikes and classic bikes are the least preferred types among users. This distribution indicates that Cyclistic users predominantly favor docked bikes, while electric bike usage remains relatively low.

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/map.png)

The maps, which display starting and ending stations, reveal a high concentration of rides in coastal areas and popular tourist spots. This pattern suggests that Cyclistic bikes are frequently used in scenic and high-traffic locations, likely by both locals and tourists seeking convenient transportation around key attractions.

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/total_ride_month.png)

The "Total Number of Rides for Users by Month" line graph shows a clear peak in ride activity for both membership types between July and September, while February and April exhibit the lowest usage levels. The increase during summer months aligns with warmer weather and peak travel season, likely encouraging more recreational rides and outdoor activity. Conversely, the low usage in February and April may be attributed to colder winter conditions in February and the transitional, often unpredictable weather of early spring in April.

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/total_ride_weekday.png)

The "Total Number of Rides for Users by Weekday" line graph shows distinct usage patterns for casual users and annual members. Casual users exhibit a significant increase in ride activity on weekends, with notably lower usage during the weekdays. This suggests that casual riders primarily use bikes for recreational purposes on their days off and less frequently during the workweek. In contrast, annual members display a different pattern, with Sunday and Monday showing relatively lower ride counts compared to other days. Interestingly, Wednesday stands out with the highest ride activity, indicating that annual members may use the service more for commuting or midweek activities, possibly due to a steady routine or a break in their work schedule. 

![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/total_ride_hour.png)

The line graphs for the start and end times of rides show that annual members experience increased bike usage at specific times of the day. In the start time graph, both user types peak at 18:00, indicating that bike usage is higher during the evening hours. In the end time graph, the peak is at 17:00, suggesting that users tend to finish their rides around this time, possibly after work or other afternoon activities. Annual members show increased usage at 08:00, 12:00, and 18:00, which correspond to typical commuting times—morning, lunch break, and evening. This suggests that annual members use bikes as part of their daily routines, with a more structured, time-focused approach to bike usage compared to casual riders.



## Act
In conclusion, the analysis of Cyclistic bike usage patterns reveals distinct behaviors between casual riders and annual members, influenced by various factors such as the purpose of the ride, time of day, and seasonal variations. Casual riders tend to use bikes for leisurely, longer rides, especially on weekends, whereas annual members show a more structured usage pattern, primarily for commuting during peak hours. The preference for docked bikes over electric and classic bikes suggests a consistent choice among users, with a clear focus on convenience and accessibility. Additionally, the concentration of rides in coastal and tourist areas reflects the demand for transportation in high-traffic, scenic locations. Seasonal trends indicate that bike usage peaks during the summer months, while it drops during colder or transitional periods.
### Suggestions
1. Targeted Marketing for Casual Riders on Weekdays:
    Since casual riders primarily use bikes on weekends, Cyclistic could introduce weekday promotions or discounts to encourage more usage during the workweek. This could help balance the demand across all days and increase weekday ridership.

2. Focus on Commuting Needs for Annual Members:
    Given that annual members primarily use bikes for commuting at specific times (08:00, 12:00, 18:00), Cyclistic could enhance bike availability and maintenance during peak hours to accommodate these users. Additionally, Cyclistic could consider offering a "commuter package" to make daily usage more convenient and cost-effective.

3. Increase Electric Bike Availability:
    With electric bikes being less popular, Cyclistic could explore ways to promote electric bikes through targeted campaigns, highlighting their benefits for longer rides or easier commutes. Additionally, placing more electric bikes in high-demand areas, such as tourist spots, could encourage more users to try them.

4. Enhance Services in Popular Tourist Areas:
    Since rides are concentrated in coastal and tourist areas, Cyclistic could focus on improving bike availability, signage, and customer support in these high-traffic locations. Offering special packages or discounts for tourists could also help boost usage during peak travel seasons.







