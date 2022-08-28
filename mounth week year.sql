select
    s.store_id,DATEPART(WEEK,order_date) w,datepart(weekday,order_date)  d, 
	   sum(o.quantity) quantity_sales,SUM(o.quantity*o.list_price) total_of_sales,
	  AVG(o.quantity*o.list_price) avg_of_sales,o.order_id ,DATEPART(MONTH,order_date) m,
	DATEPART(WEEK,order_date) w,DATEPART(year,order_date) y
    FROM 
        sales.order_items o
    JOIN  sales.orders s ON o.order_id=s.order_id
	
    GROUP BY rollup( s.store_id,o.order_id,datepart(weekday,order_date) ,DATEPART(WEEK,order_date) ,DATEPART(MONTH,order_date),
	DATEPART(year,order_date))


select
    s.store_id,day(order_date)  d, 
	   sum(o.quantity) quantity_sales,SUM(o.quantity*o.list_price) total_of_sales,
	  AVG(o.quantity*o.list_price) avg_of_sales,o.order_id ,MONTH(order_date) m
    FROM 
        sales.order_items o
    JOIN  sales.orders s ON o.order_id=s.order_id
	
    GROUP BY rollup( s.store_id,o.order_id ,MONTH(order_date),
	day(order_date) )