-- Calculate YoY growth rates for each store to prioritize investments.
SELECT
    store_no AS Store,
    YEAR(Date) AS Year,
    ROUND(LAG(SUM(Weekly_Sales), 1, 0) OVER (PARTITION BY store_no ORDER BY YEAR(Date)), 0) AS Previous_Year_Sales,
    ROUND(SUM(Weekly_Sales), 0) AS Current_Year_Sales,
    ROUND(
        (SUM(Weekly_Sales) - LAG(SUM(Weekly_Sales), 1, 0) OVER (PARTITION BY store_no ORDER BY YEAR(Date))) / LAG(SUM(Weekly_Sales), 1, 0) OVER (PARTITION BY store_no ORDER BY YEAR(Date)),
        2
    ) AS YoY_Growth_Rate
FROM
    walmart_sales
GROUP BY
    store_no,
    YEAR(Date)
ORDER BY
    store_no,
    YEAR(Date);