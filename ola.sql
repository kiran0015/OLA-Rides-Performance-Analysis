Create Database Ola;
Use Ola;

#1. Identify all bookings that were successfully completed.
Create View Successful_booking As
Select * From bookings
Where Booking_Status='Success';

#1. Identify all bookings that were successfully completed.
Select * From Successful_booking;

#2. Calculate the average travel distance for each vehicle type.
Create view avg_Distance_for_each_Vehicle AS
Select Vehicle_Type, AVG(Ride_Distance) AS Average_Distance
From bookings
GROUP BY Vehicle_Type;

#2. Calculate the average travel distance for each vehicle type.
Select * From avg_Distance_for_each_Vehicle;

#3. Count the total number of rides cancelled by the customers.
Create view rides_cancellation_by_customers AS
Select count(*) From bookings
Where Booking_Status= 'Canceled by Customer';

#3. Count the total number of rides cancelled by the customers.
Select * From  rides_cancellation_by_customers;

#4. Determine the top 5 customers with the highest number of rides.
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS Number_of_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Number_of_Rides DESC
LIMIT 5;

#4. Determine the top 5 customers with the highest number of rides.
SELECT * FROM Top_5_Customers;


#5. Find out how many rides were cancelled by drivers due to vehicle malfunctions and personal circumstances.
CREATE VIEW Driver_Cancellations AS
SELECT COUNT(*) AS Driver_Cancellation_Count
FROM bookings
WHERE canceled_Rides_by_Driver ="Personal & Car related issue";

#5. Find out how many rides were cancelled by drivers due to vehicle malfunctions and personal circumstances.
SELECT Driver_Cancellation_Count FROM Driver_Cancellations;


#6. Find the highest and lowest driver ratings for "Prime Sedan" trips.
CREATE VIEW Prime_Sedan_Ratings AS
SELECT MAX(Driver_Ratings) AS Max_Rating, MIN(Driver_Ratings) AS Min_Rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

#6. Find the highest and lowest driver ratings for "Prime Sedan" trips.
SELECT * FROM Prime_Sedan_Ratings;


#7. List all trips where the payment method used was UPI.     
CREATE VIEW UPI_Bookings AS
SELECT *
FROM bookings
WHERE Payment_Method = 'UPI';

#7. List all trips where the payment method used was UPI
SELECT * FROM UPI_Bookings;

#8. Calculate the average customer satisfaction score for each type of vehicle.
CREATE VIEW Avg_Customer_Rating_Vehicle AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS Avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;

#8. Calculate the average customer satisfaction score for each type of vehicle.
SELECT * FROM Avg_Customer_Rating_Vehicle;


# 9. Calculate the total booking value of rides completed successfully 
CREATE VIEW Total_Successful_Ride AS
SELECT SUM(Booking_Value) AS Total_Successful_Ride_value
FROM bookings
WHERE Booking_Status = 'Success';

# 9. Calculate the total booking value of rides completed successfully 
SELECT Total_Successful_Ride_value FROM Total_Successful_Ride;


#10. Retrieve a list of all incomplete rides and the specific reasons for their incompletion.
CREATE VIEW Incomplete_Rides_with_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

#10. Retrieve a list of all incomplete rides and the specific reasons for their incompletion.
SELECT * FROM Incomplete_Rides_with_Reason;


#11. Calculate the percentage of rides that were cancelled by drivers for each vehicle type.
CREATE VIEW Driver_Cancellation_Rate_by_Vehicle AS
SELECT Vehicle_Type, (COUNT(CASE WHEN canceled_Rides_by_Driver IS NOT NULL THEN 1 END) * 100.0) / COUNT(Booking_ID) AS Driver_Cancellation_Rate
FROM bookings
GROUP BY Vehicle_Type;

#11. Calculate the percentage of rides that were cancelled by drivers for each vehicle type.
SELECT * FROM Driver_Cancellation_Rate_by_Vehicle;


#12. Find the vehicle type with the lowest average driver rating.
CREATE VIEW Lowest_Avg_Driver_Rating_Vehicle AS
SELECT Vehicle_Type, AVG(Driver_Ratings) AS Avg_Driver_Rating
FROM  bookings
GROUP BY Vehicle_Type
ORDER BY Avg_Driver_Rating ASC
LIMIT 1;

#12. Find the vehicle type with the lowest average driver rating.
SELECT * FROM Lowest_Avg_Driver_Rating_Vehicle;


#13. Calculate the average ride distance for rides paid with 'Card' versus 'Cash'.
CREATE VIEW Average_Distance_payment_Method AS
SELECT Payment_Method, AVG(Ride_Distance) AS Average_Distance
FROM bookings
WHERE Payment_Method IN ('Credit Card' ,'Debit Card', 'Cash', 'UPI')
GROUP BY Payment_Method;

#13. Calculate the average ride distance for rides paid with 'Card' versus 'Cash'.
SELECT * FROM Average_Distance_Payment_Method;


#14. For each vehicle type, calculate the percentage of successful bookings.
CREATE VIEW Success_Rate_by_Vehicle AS
SELECT
    Vehicle_Type,
    (SUM(CASE WHEN Booking_Status = 'Success' THEN 1 ELSE 0 END) * 100.0) / COUNT(Booking_ID) AS Success_Percentage
FROM bookings
GROUP BY Vehicle_Type;

#14. For each vehicle type, calculate the percentage of successful bookings.
SELECT * FROM Success_Rate_by_Vehicle;





