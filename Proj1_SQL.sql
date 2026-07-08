/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Row ID]
      ,[Order ID]
      ,[Order Date]
      ,[Ship Date]
      ,[Ship Mode]
      ,[Customer ID]
      ,[Customer Name]
      ,[Segment]
      ,[Country]
      ,[City]
      ,[State]
      ,[Postal Code]
      ,[Region]
      ,[Product ID]
      ,[Category]
      ,[Sub-Category]
      ,[Product Name]
      ,[Sales]
      ,[Quantity]
      ,[Discount]
      ,[Profit]
  FROM [SuperstoreDB].[dbo].[Orders$]

  SELECT SUM(Sales) AS total_revenue
FROM [SuperstoreDB].[dbo].[Orders$]

SELECT SUM(Profit) AS total_profit
FROM [SuperstoreDB].[dbo].[Orders$]

SELECT TOP 10
	[Product Name],
	SUM(Sales) AS Total_Sales
FROM [SuperstoreDB].[dbo].[Orders$]
GROUP BY [Product Name]
ORDER BY Total_Sales DESC;

SELECT TOP 5
	[Customer Name],
	SUM(Sales) AS Total_Sales
FROM [SuperstoreDB].[dbo].[Orders$]
GROUP BY [Customer Name]
ORDER BY Total_Sales DESC;

SELECT Category,
SUM(Sales) AS total_sales
FROM [SuperstoreDB].[dbo].[Orders$]
GROUP BY Category
ORDER BY total_sales DESC;

SELECT Region,
SUM(Sales) AS total_sales
FROM [SuperstoreDB].[dbo].[Orders$]
GROUP BY Region
ORDER BY total_sales DESC;

SELECT FORMAT([Order Date], 'yyyy-MM') AS month,
SUM(Sales) AS total_sales
FROM [SuperstoreDB].[dbo].[Orders$]
GROUP BY FORMAT([Order Date], 'yyyy-MM')
ORDER BY month

SELECT Category,
AVG(Profit) AS avg_profit
FROM [SuperstoreDB].[dbo].[Orders$]
GROUP BY Category
ORDER BY avg_profit DESC;