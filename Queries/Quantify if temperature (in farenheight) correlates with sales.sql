-- Quantify if temperature (In farenheight) correlates with sales
SELECT
    CASE
        WHEN temperature < 50 THEN 'Cool'
        WHEN temperature >= 50 AND temperature < 70 THEN 'Mild'
        WHEN temperature >= 70 AND temperature < 90 THEN 'Warm'
        ELSE 'Hot'
    END AS temperature_group,
    ROUND(AVG(weekly_sales), 0) AS total_sales
FROM walmart_sales
GROUP BY temperature_group
