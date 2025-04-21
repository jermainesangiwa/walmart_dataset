-- Investigate how inflation (CPI) impacts sales across stores.
SELECT
    store_no AS Stores,
    ROUND(AVG(CPI), 1) AS Avg_CPI,
    ROUND(AVG(Weekly_Sales), 1) AS Avg_Sales
FROM
    walmart_sales
GROUP BY
    store_no
ORDER BY
    Avg_CPI DESC;