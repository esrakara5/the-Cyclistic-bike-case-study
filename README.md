# Cyclistic Bike Share Case Study
##### Prepared by Esra KARA.
This case study has been assigned to me as the capstone project in my Google Data Analytics course. The project utilizes SQL (BigQuery) and Tableau.
In order to answer the business questions, the steps of the data analysis process have been followed: [Ask](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Ask), [Prepare](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Prepare), [Process](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Process), [Analyze](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Analyze), [Share](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Share), and [Act](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/README.md#Act).
## Scenario
You work as a junior data analyst on the marketing team at Cyclistic, a bike-share company based in Chicago. The director of marketing emphasizes the company's growth through maximizing annual memberships. Your team's objective is to analyze the differences in bike usage between casual riders and annual members at Cyclistic. Using these insights, you will develop a new marketing strategy aimed at converting casual riders into annual members. Before proceeding, your recommendations must gain approval from Cyclistic executives, supported by compelling data insights and professional data visualizations.
#### About Company
In 2016, Cyclistic launched a successful bike-share program that has since grown to a fleet of 5,824 bicycles, geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system at any time. Cyclistic's marketing strategy has focused on building general awareness and appealing to broad consumer segments. This approach has been supported by flexible pricing plans including single-ride passes, full-day passes, and annual memberships. Customers purchasing single-ride or full-day passes are categorized as casual riders, while those opting for annual memberships become Cyclistic members.
## Ask
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
## Analyze
![data_viz](https://github.com/esrakara5/the-Cyclistic-bike-case-study/blob/main/Visualizations/agg_func.png)
## Share
![data_viz]
![data_viz]
![data_viz]
![data_viz]
![data_viz]
![data_viz]
![data_viz]
![data_viz]

## Act
