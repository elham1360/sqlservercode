select datepart(weekday,getdate())

SELECT 
    order_date,DATEPART(WEEKDAY,order_date) d,
	   COUNT(quantity) quantity_sales,SUM(quantity*list_price) sum_of_sales,
	  AVG(quantity*list_price) avg_of_sales
    FROM 
        sales.order_items o
    JOIN  sales.orders s ON o.order_id=s.order_id
    GROUP BY order_date
    HAVING DATEPART(WEEKDAY,order_date)>=1 OR  DATEPART(WEEKDAY,order_date)<=5


-- Define Order Date
DECLARE 2017-01-12 DATETIME2='2017-01-19'

-- Getting Week Day of the Order Date
SELECT DATEPART(WEEKDAY,2017-01-12) as WeekDay_OrderDate

select DATEDIFF (day, 2017-01-19,2017-01-17),order_date from sales.orders

DECLARE @MinDate DATE = '20170101',
        @MaxDate DATE = '20170107';

SELECT  Date
FROM    dbo.Calendar
WHERE   Date >= @MinDate
AND     Date < @MaxDate;

DECLARE @MinDate DATE = '20170112',
        @MaxDate DATE = '20170119';

SELECT  TOP (DATEDIFF(DAY, @MinDate, @MaxDate) + 1)
        Date = DATEADD(DAY, ROW_NUMBER() OVER(ORDER BY a.object_id) - 1, @MinDate),
		order_id,sum(quantity*price)
FROM    sys.all_objects a
        CROSS JOIN sys.all_objects b;
select * from sales.staffs