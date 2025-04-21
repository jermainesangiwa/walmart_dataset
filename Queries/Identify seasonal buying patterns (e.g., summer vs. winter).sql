-- Identify seasonal buying patterns (e.g., summer vs. winter).
SELECT
    QUARTER(Date) AS Quarter,
    ROUND(AVG(Weekly_Sales), 0) AS Avg_Sales
FROM
    walmart_sales
GROUP BY
    QUARTER(Date);
