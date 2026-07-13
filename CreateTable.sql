use salesdashboard;

CREATE TABLE Sales (

Order_ID VARCHAR(20),

Order_Date DATE,

Ship_Date DATE,

Customer_ID VARCHAR(20),

Customer_Name VARCHAR(100),

Segment VARCHAR(50),

Country VARCHAR(50),

State VARCHAR(50),

City VARCHAR(50),

Region VARCHAR(30),

Category VARCHAR(50),

Sub_Category VARCHAR(50),

Product_Name VARCHAR(100),

Sales DECIMAL(10,2),

Quantity INT,

Discount DECIMAL(5,2),

Profit DECIMAL(10,2),

Payment_Mode VARCHAR(30),

Ship_Mode VARCHAR(30),

Year INT,

Month VARCHAR(20),

Quarter INT,

Delivery_Days INT,

Profit_Margin DECIMAL(10,2)

);
select count(*) from sales_cle;