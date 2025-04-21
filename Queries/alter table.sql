-- Alter table set Date from text to date
UPDATE walmart_sales SET Date = STR_TO_DATE(Date, '%d/%m/%Y') WHERE Date REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$';
ALTER TABLE walmart_sales MODIFY Date DATE;

-- Alter table, set Holiday_Flag from int to boolean
UPDATE walmart_sales SET Holiday_Flag = IF(Holiday_Flag = 1, TRUE, FALSE);
ALTER TABLE walmart_sales MODIFY Holiday_Flag BOOLEAN;

-- Alter table set change column name from Store to store_no
ALTER TABLE walmart_sales CHANGE Store store_no INT;