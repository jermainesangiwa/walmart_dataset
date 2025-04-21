-- Identify the top 5 best performing stoes based on average weekly sales.
SELECT
    store_no,
    ROUND(AVG(Weekly_Sales), 2) AS Average_Sales
FROM walmart_sales
GROUP BY store_no
ORDER BY Average_Sales DESC
LIMIT 5;
