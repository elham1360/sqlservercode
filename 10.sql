select
customer_id,item_id,sum (quantity)
from sales.orders o
join sales.order_items i on i.order_id=o.order_id
group by 

SELECT 
   first_name,last_name,item_id,c.customer_id,sum(quantity) as total 
FROM  
    sales.orders  s
	JOIN sales.order_items o ON s.order_id=o.order_id
	JOIN sales.customers c ON s.customer_id=c.customer_id
GROUP BY first_name,last_name,item_id,c.customer_id 

ORDER BY c.customer_id desc,sum(quantity) 



SELECT TOP 2 customer_id
FROM (
SELECT DISTINCT TOP N sales.orders
FROM #sales
ORDER BY salary DESC
) AS temp
ORDER BY salary









customer_id,MONTH(order_date) month ,year(order_date) year,

avg(quantity*list_price)/lag(avg(quantity*list_price),1)over(order by year(order_date),month(order_date)) ratio 
from 
    sales.order_items s
    join sales.orders o on o.order_id=s.order_id
	where year(order_date)in(2016,2018)
	group by year(order_date),month(order_date),customer_id
     



	 SELECT first_name, last_name,c.customer_id, 
	 ROW_NUMBER() OVER ( PARTITION BY s.customer_id ORDER BY first_name ) row_num 
	 FROM sales.customers  c 
	

	JOIN sales.orders  s ON s.customer_id=c.customer_id
	 	JOIN sales.order_items o ON s.order_id=o.order_id
	 ORDER BY c.customer_id;