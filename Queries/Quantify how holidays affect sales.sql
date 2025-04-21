-- Quantify how holidays affect sales
SELECT
    Holiday_Flag,
    ROUND(AVG(Weekly_Sales),2) AS Avg_Sales
FROM walmart_sales
GROUP BY Holiday_Flag;
