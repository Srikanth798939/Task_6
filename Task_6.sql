Create database Online_Sales

use Online_Sales

Select * from Sales_data

select * 
	from Sales_data
	Where Order_ID is Null
	or Amount is Null
	or Profit is Null
	or Quantity is Null
	or Category is Null
	or Sub_Category is Null
	or PaymentMode is Null;

select COUNT (*) AS NullCount 
	from Sales_data
	Where Order_ID is Null
	or Amount is Null
	or Profit is Null
	or Quantity is Null
	or Category is Null
	or Sub_Category is Null
	or PaymentMode is Null;

--Use EXTRACT(MONTH FROM order_date) for month.

Select * from Sales_data


select 
	Order_Date,
	MONTH(Order_Date)as OrderMonth
From Sales_data

Select 
	Order_Date,
	DATENAME(Month,Order_Date)as MonthName,
	MONTH(Order_Date)as MonthNumber
from Sales_data

--GROUP BY year/month.

select 
	FORMAT(Order_Date, 'yyyy-MM') AS YearMonth,
	COUNT(*) as OrdersCount
From Sales_data
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY YearMOnth

select * from Sales_data

--.Use SUM() for revenue

SELECT
    FORMAT(Order_Date, 'yyyy-MM') AS YearMonth,
    SUM(Profit) AS TotalRevenue
FROM Sales_data
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY YearMonth;


--COUNT(DISTINCT order_id) for volume.

select 
	FORMAT(Order_Date, 'yyyy-MM') AS YearMonth,
    SUM(Profit) AS TotalRevenue,
	COUNT(distinct Order_Id) as OrderVolume
FROM Sales_data
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY YearMonth;


--.Use ORDER BY for sorting.

select 
	FORMAT(Order_Date, 'yyyy-MM') AS YearMonth,
    SUM(Profit) AS TotalRevenue,
	COUNT(distinct Order_Id) as OrderVolume
FROM Sales_data
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY TotalRevenue DESC;

--Limit results for specific time periods.

Select * from Sales_data

SELECT
    FORMAT(Order_Date, 'yyyy-MM') AS YearMonth,
    SUM(Profit) AS TotalRevenue,
    COUNT(DISTINCT Order_ID) AS OrderVolume
FROM Sales_data
WHERE YEAR(Order_Date) = 2018 AND MONTH(Order_Date) = 3
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY YearMonth;


