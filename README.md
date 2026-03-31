Dashboard Overview

The Swiggy Sales Analysis Dashboard was developed using Microsoft Power BI and connected to the data stored in Microsoft Fabric Warehouse using DirectQuery. The dashboard provides interactive visualizations to analyze food delivery sales performance, restaurant popularity, and ordering trends across different locations and time periods.

During this learning journey, I gained hands-on experience with:
🔹 Data ingestion and transformation 
🔹 Data Warehousing in OneLake 
🔹 Data pipelines and data engineering workflows 
🔹 Creating semantic models 
🔹 Building interactive dashboards in Power BI

The report allows users to filter and explore data using slicers such as City, Food Type, Quarter, and Restaurant Name.

Key Metrics
The dashboard highlights important business KPIs including:
Total Sales: ₹265.06M Average Order Value: ₹268.51 Total Orders: 987K Average Rating: 4.29 Total Ratings Count: 28M Visualizations in the Dashboard
The dashboard contains multiple visualizations to understand sales patterns:
Monthly Trend Shows how total sales change across months to identify seasonal demand. Daily Trend Displays order patterns by day of the week to determine peak ordering days. Weekly Trend Tracks sales performance across weeks. Sales by Restaurant Identifies top-performing restaurants contributing the highest revenue. Sales by State Shows regional sales distribution across different states. Sales by Food Type Provides insights into which food categories generate the most sales.

Interactive Features
Users can interact with the dashboard using slicers to filter data by: City Food Type Quarter Restaurant Name

Tools Used
Microsoft Fabric:
Microsoft Fabric was used as the main data platform for this project. It was used to store and manage the dataset in the Fabric Warehouse, perform SQL-based data transformations, and create the structured data model used for analytics.

Microsoft Power BI:
Power BI was used to build interactive dashboards and visualizations. It connects to the Fabric Warehouse using DirectQuery to analyze sales trends, restaurant performance, and ordering patterns through dynamic reports.

SQL :
SQL was used to create tables, clean the data, and perform transformations inside the Fabric Warehouse. Queries were written to structure the dataset into fact and dimension tables for efficient analysis.

DAX (Data Analysis Expressions) :
DAX was used in Power BI to create calculated measures such as Total Sales, Average Order Value, and Total Orders to support the analytical insights in the dashboard. This allows deeper exploration of sales patterns and customer preferences.
