-- Identify stores in high-unemployment regions needing targeted promotions (Min unemployement is 3.9, Max is 14.3).
SELECT
    store_no AS Store,
    ROUND(AVG(Unemployment), 1) AS Unemployment_Rate,
    ROUND(AVG(Weekly_Sales), 0) AS Average_Sales
FROM
    walmart_sales
GROUP BY
    store_no
HAVING
    Unemployment_Rate > 8
ORDER BY
    Unemployment_Rate DESC;
