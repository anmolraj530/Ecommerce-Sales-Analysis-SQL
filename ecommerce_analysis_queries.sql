-- 📊 TO FIND PRODUCT PERFORMANCE ANALYSIS
SELECT Product_Name, Category, SUM(Quantity) AS Total_Quantity_Sold,
       SUM(Total_Sales) AS Total_Revenue
FROM sales
GROUP BY Product_Name, Category
ORDER BY Total_Revenue DESC;

-- 👥 TO FIND CUSTOMER BEHAVIOUR ANALYSIS
SELECT Gender, ROUND(AVG(Total_Sales),2) AS Avg_Spending,
       COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM sales
GROUP BY Gender;

-- 🌍 TO FIND REGIONAL SALES TRENDS
SELECT Region, City, SUM(Total_Sales) AS Region_Revenue
FROM sales
GROUP BY Region, City
ORDER BY Region_Revenue DESC;

-- 🗓️ TO FIND SALES BY MONTH
SELECT strftime('%Y-%m', Order_Date) AS Month, SUM(Total_Sales) AS Monthly_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

-- 💳 TO FIND PAYMENT METHOD INSIGHTS
SELECT Payment_Method, COUNT(*) AS Orders, SUM(Total_Sales) AS Total_Spent
FROM sales
GROUP BY Payment_Method
ORDER BY Total_Spent DESC;

-- 🔍 TO FIND TOP CUSTOMERS
SELECT Customer_Name, SUM(Total_Sales) AS Total_Spent
FROM sales
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 10;

-- 🧮 TO FIND AVERAGE ORDER VALUE
SELECT ROUND(SUM(Total_Sales)/COUNT(DISTINCT Order_ID),2) AS Avg_Order_Value
FROM sales;
