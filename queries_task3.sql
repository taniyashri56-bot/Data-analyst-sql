sqlite3 task3.db

CREATE TABLE sales_data (
    Order_ID TEXT,
    Order_Date TEXT,
    Customer_Name TEXT,
    Category TEXT,
    Region TEXT,
    Sales REAL,
    Profit REAL
);

.mode csv

.import sales_data_task3.csv sales_data

SELECT COUNT(*) FROM sales_data;

SELECT * FROM sales_data LIMIT 5;

SELECT * FROM sales_data
WHERE Category = 'Technology';

SELECT * FROM sales_data
ORDER BY Sales DESC
LIMIT 10;

SELECT Category, SUM(Sales)
FROM sales_data
GROUP BY Category;

SELECT Category, SUM(Sales)
FROM sales_data
GROUP BY Category;

SELECT Category, SUM(Sales)
FROM sales_data
GROUP BY Category
HAVING SUM(Sales) > 100000;

SELECT * FROM sales_data
WHERE Order_Date BETWEEN '2023-01-01' AND '2023-01-31';

SELECT * FROM sales_data
WHERE Customer_Name LIKE '%John%';

SELECT Customer_Name, SUM(Sales) AS Total_Spend
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Spend DESC
LIMIT 5;

.headers on

.mode csv
.output sales_summary.csv

SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

.output stdout

