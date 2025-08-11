-- BMW SALES ANALYSIS --

-- top 5 most expensive BMW models based on Price
 use bmwschema;
 SELECT Model, 
 Price_USD FROM bmw_car_sales_classification 
 ORDER BY Price_USD DESC LIMIT 5;
 
 --  average mileage for Petrol cars
  SELECT AVG(Mileage_KM) AS Avg_Mileage 
  FROM bmw_car_sales_classification 
  WHERE Fuel_Type = 'Petrol';

-- total sales volume per Region
 SELECT Region, 
 SUM(Sales_Volume) AS Total_Sales 
 FROM bmw_car_sales_classification 
 GROUP BY Region;
 
 -- model with the lowest mileage
  SELECT Model, 
  Mileage_KM 
  FROM bmw_car_sales_classification 
  ORDER BY Mileage_KM ASC LIMIT 1;

-- number of cars sold each year
 SELECT Year, COUNT(*) AS Cars_Sold 
 FROM bmw_car_sales_classification 
 GROUP BY Year ORDER BY Year;

-- cars with engines greater than 4 liters
 SELECT Model, Engine_Size_L, 
 Price_USD FROM bmw_car_sales_classification 
 WHERE Engine_Size_L > 4.0;

-- average price for each Transmission type
 SELECT Transmission,
 AVG(Price_USD) AS Avg_Price 
 FROM bmw_car_sales_classification 
 GROUP BY Transmission;
 
 -- models sold in 'North America' classified as 'High'
  SELECT Model, 
  Region, 
  Sales_Classification FROM bmw_car_sales_classification 
  WHERE Region = 'North America' 
  AND Sales_Classification = 'High';
 
 -- highest priced Diesel car
  SELECT Model, 
  Price_USD FROM bmw_car_sales_classification 
  WHERE Fuel_Type = 'Diesel' 
  ORDER BY Price_USD DESC LIMIT 1;
 
 -- count of different colors available for each model
  SELECT Model, 
  Color, 
  COUNT(*) AS Color_Count 
  FROM bmw_car_sales_classification 
  GROUP BY Model, 
  Color ORDER BY Model;