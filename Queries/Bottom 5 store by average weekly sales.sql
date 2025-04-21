-- Bottom 5 store by average weekly sales
SELECT
    store_no AS Store,
    ROUND(AVG(Weekly_Sales), 2) AS Average_Sales
FROM walmart_sales
GROUP BY store_no
ORDER BY Average_Sales
LIMIT 5;
