# Hotel-Data-Analysis
Build a visual data story or dashboard using Power BI to present to your stakeholders. In this Hotel project, I will be using SQL server to analyze the data first. And then, I will visualize the data and create a chart on Power BI by importing the SQL statements.

## Dataset
We have historic data of hotels in various fields over period of three years that is from 2018 to 2020 in three different excel sheets and also two other important separate sheets are meal_cost and market_segment , these all sheets ee will add into single table while doing EDA.

## Data Analysis Project Pipeline
1) Build a Database
2) Develop the SQL Query
3) Connect Power BI to the Database
4) Visualize
5) Summarize Findings

## Questions which we will answer by visualization 

1) Is our hotel revenue growing by year?

--> We have two hotel types so it would be good to segment revenue by hotel type.

2) Should we increase our parking lot size?

--> We want to understand if there is a trend is guest with personal cars.

3) What trends can we see in the data?

--> Focus on average daily rate and guests to explore seasonality

##

## The steps to be performed as follows,

### 1. Create database and import data from excel sheets to tables in this project the i am going to use SQL Server Management Studio to Build a Database

Download SSMS and create new database by right click on database filed and give the name you want. Next, import data from excel to database, select all sheets in excel files so they will import as each table in database.

### 2. Perform EDA, Analyze and Retrieve Data with SQL

once you import the data then do some EDA on data with SQL quires.

create a new table to store the data from all the tables and join each table with different joins.

— /* the data from different tables and merge this into one. */

with hotels as(

select * from dbo.[‘2018$’]

union

select * from dbo.[‘2019$’]

union

select * from dbo.[‘2020$’])

select * from hotels

left join dbo.market_segment$

ON hotels.market_segment= market_segment$.market_segment

left join dbo.meal_cost$

ON meal_cost$.meal=hotels.meal

### 3. Connect Power BI to a Database

Once you done with joining different tables and some base level EDA to understand the data then you can Connect Power BI to a Database and extract table in power BI using same SQL query.

### 4. Visualize Data in Power BI

After loading data into Power BI, you can play around the data with transform data in power query editor. there you will need to add some new columns and new measures to show the desired results in your dashboard. for example, to calculate revenue you will need to add stays in weekdays + stays in weekends, multiply by rate and exclude discount.

figure out which visuals can help business users to understand the desired goals and questions they have and include those, try to show answer of each question with different visuals and KPI’s for clear understanding of numbers.
