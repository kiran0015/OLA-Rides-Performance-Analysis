
# 🚗 OLA Rides Analysis Project

### **Project Summary**

This project provides a comprehensive analysis of OLA ride-hailing data, from initial bookings to final ride outcomes. The primary goal was to uncover key operational trends, customer behaviors, and performance metrics to deliver actionable insights for improving service quality and operational efficiency.

The analysis workflow was executed in three distinct phases:
1.  **Data Cleaning & Preprocessing:** Utilizing Microsoft Excel to handle data inconsistencies and format the raw data for analysis.
2.  **Data Querying & Analysis:** Leveraging SQL to perform in-depth querying, answer critical business questions, and extract key metrics.
3.  **Interactive Visualization & Dashboarding:** Creating a dynamic and insightful dashboard in Power BI to present the findings in a clear, interactive format.

### **📂 Project Contents**

The repository is structured to provide a clear view of the project's components:

* `Bookings.csv`: The original dataset containing all raw ride booking information.
* `ola.sql`: The SQL script with all the queries used to analyze the data, covering a wide range of business questions.
* `ola_overall.png`: A screenshot of the main Power BI dashboard, providing an overview of key performance indicators.
* `ola_cancellation.png`: A detailed view from the dashboard focusing on ride cancellation trends.
* `ola_ratings.png`: A visual representation of driver and customer ratings, showcasing satisfaction levels.
* `ola_rev.png`: A snapshot of the revenue and payment method analysis from the dashboard.
* `ola_vehicletypes.png`: A visual breakdown of performance metrics segmented by vehicle type.

### **🛠️ Technologies & Tools**

* **Microsoft Excel**: For initial data cleaning, transformation, and preparation. This included handling missing values and ensuring data integrity.
* **SQL (MySQL)**: For querying the dataset to answer specific business questions, such as calculating cancellation rates, identifying top customers, and analyzing ride distances.
* **Power BI**: For building an interactive, visually compelling dashboard that allows stakeholders to explore the data and derive insights at a glance.

### **📊 Key Analysis & Insights**

The SQL queries in `ola.sql` and the Power BI dashboard were designed to address the following key areas:

1.  **Operational Performance & Efficiency**
    * **Booking Status:** Analysis of the distribution of ride outcomes (Success, Canceled by Driver, Canceled by Customer, etc.).
    * **Cancellation Analysis:** Detailed examination of cancellation reasons, including identifying the percentage of rides canceled by drivers for each vehicle type.
    * **Customer & Driver Satisfaction:** Calculation of average driver and customer ratings to gauge overall service quality.

2.  **Customer Behavior**
    * **Top Customers:** Identification of the top 5 customers by the number of completed rides, a key metric for loyalty programs.
    * **Payment Method Trends:** Comparison of average ride distances for different payment methods (e.g., 'Cash' vs. 'Card' vs. 'UPI').

3.  **Financial & Revenue Metrics**
    * **Revenue Generation:** Calculation of total booking value and its distribution across various ride segments.
    * **Value per Ride:** Analysis of the average ride distance and its relation to booking value and vehicle type.

### **✨ Interactive Dashboard**

The Power BI dashboard serves as the final output of this project. It is a dynamic tool that empowers users to drill down into the data, apply filters, and gain deeper insights. The included images provide a glimpse into the dashboard's capabilities, demonstrating how the complex data analysis was translated into a clear and understandable visual story.

This project showcases a complete data analysis lifecycle, from raw data to actionable insights, using a powerful combination of Excel, SQL, and Power BI.
