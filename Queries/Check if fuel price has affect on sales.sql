-- Check if fuel price has affect on sales --
SELECT
    CASE
        WHEN Fuel_Price < 3 THEN 'Very Low'
        WHEN Fuel_Price >= 3 AND Fuel_Price < 3.5 THEN 'Low'
        WHEN Fuel_Price >= 3.5 AND Fuel_Price < 4 THEN 'Medium'
        ELSE 'High'
    END AS Fuel_Price_Range,
    ROUND(AVG(Weekly_Sales), 0) AS Avg_Weekly_Sales,
    COUNT(*) AS Number_of_Weeks
FROM walmart_sales
GROUP BY Fuel_Price_Range
ORDER BY Avg_Weekly_Sales DESC;



-- Calculate the mean, min, and max of fuel price --
SELECT
    ROUND(MIN(Fuel_Price), 2) AS Min_Fuel_Price,
    ROUND(MAX(Fuel_Price), 2) AS Max_Fuel_Price,
    ROUND(AVG(Fuel_Price), 2) AS Median_Fuel_Price
FROM walmart_sales;


