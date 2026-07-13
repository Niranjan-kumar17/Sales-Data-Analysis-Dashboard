SELECT * FROM salesdashboard.sales_clean;
#Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_clean;

# Calculate Total Profit
select round(sum(profit),2) as Total_profit from sales_clean;

# Calculate Total order_id
select count(Order_ID) as total_order from sales_clean;

# Calculate average sales
select round(avg(sales),2) as average_sales from sales_clean;
SELECT COUNT(*) FROM Sales;

# Calculate average profit
select round(avg(profit),2) as average_profit from sales_clean;

# Calculate highest sales
select max(sales) from sales_clean;

#Lowest Sales
SELECT MIN(Sales) FROM Sales;

# Catagory wise Totalsales
select Category ,sum(sales) as TotalSales from sales_clean group by Category order by Totalsales desc;

# Catagory wise Totalprofit
select Category,round(sum(Profit),2) as TotalProfit from sales_clean group by Category ;

# Region  wise Totalsales
select Region, round(sum(sales),2) as Totalsales from sales_clean group by Region order by Totalsales desc;

#State Wise Sales
SELECT State,SUM(Sales) as Totalsales FROM sales_clean GROUP BY State ORDER BY TotalSales DESC;

# Top 10 Customers
select Customer_Name,sum(Sales) as totalsales from sales_clean  
group by Customer_Name order by Totalsales desc limit 10;

# Top 5 Products
select Product_Name,sum(Sales) as Totalsales from sales_clean
group by Product_Name order by Totalsales desc limit 5;

#Top profit Products
select Product_Name,sum(Profit) as Totalprofit from sales_clean
group by Product_Name order by Totalprofit desc limit 5;

# Loss Making Products
select Product_Name,sum(Profit) as TotalProfit from sales_clean
group by Product_Name having TotalProfit<0;

# city  Sales
SELECT City,SUM(Sales) FROM sales_clean GROUP BY City;
# Monthly Sales
SELECT Month, SUM(Sales) FROM sales_clean1 GROUP BY Month;

# Year wise Sales
select Year,round(sum(Sales),2) as Totalsales from sales_clean1 group by year;

# Quarter Wise Sales
SELECT Quarter,SUM(Sales) FROM sales_clean1 GROUP BY Quarter;

# Payment Mode Analysis 
SELECT Payment_Mode,COUNT(*) FROM sales_clean1 GROUP BY Payment_Mode;

# Ship Mode Analysis
SELECT Ship_Mode,COUNT(*) FROM sales_clean1 GROUP BY Ship_Mode;

#Average Delivery Days
SELECT AVG(Delivery_Days) FROM sales_clean1;

# Highest Discount 
SELECT MAX(Discount) FROM sales_clean1;

# Customer Segment Analysis
SELECT Segment, SUM(Sales) FROM sales_clean1 GROUP BY Segment;

# Top 5 States by Profit
SELECT State,SUM(Profit) FROM sales_clean1 GROUP BY State ORDER BY SUM(Profit) DESC LIMIT 5;

# Profit Margin by Category
SELECT Category, ROUND(AVG(Profit_Margin),2) FROM sales_clean1 group by  Category;

SELECT *
FROM sales_clean1
LIMIT 10;

DESCRIBE Sales;

SELECT COUNT(*)
FROM Sales
WHERE Sales IS NULL;

SELECT *
FROM Sales
LIMIT 5;

SELECT COUNT(*) FROM Sales;
SHOW TABLES;