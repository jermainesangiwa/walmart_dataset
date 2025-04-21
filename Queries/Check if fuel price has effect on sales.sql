-- Check if fuel price has effect on sales --
-- Min fuel price is 2.47, max fuel price is 4.47, average fuel price is 3.52 --
-- Fuel price range is divided into 4 categories: Very Low, Low, Medium, High --
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



-- Calculate the min, max, and avergae of fuel price --
SELECT
    ROUND(MIN(Fuel_Price), 2) AS Min_Fuel_Price,
    ROUND(MAX(Fuel_Price), 2) AS Max_Fuel_Price,
    ROUND(AVG(Fuel_Price), 2) AS Median_Fuel_Price
FROM walmart_sales;


