-- Flag stores with both high CPI and high unemployment for urgent action.
-- The query is to find the stores with both high CPI and high unemployment rate.
SELECT
    store_no AS Store,
    ROUND(AVG(CPI), 1) AS Avg_CPI,
    ROUND(AVG(Unemployment), 1) AS Avg_Unemployment
FROM
    walmart_sales
GROUP BY
    store_no
HAVING 
    Avg_CPI > (SELECT AVG(CPI) FROM walmart_sales)
    AND Avg_Unemployment > (SELECT AVG(Unemployment) FROM walmart_sales)