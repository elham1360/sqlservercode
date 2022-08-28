select 
o.customer_id,MONTH(o.order_date) month ,year(o.order_date) year,count( o.customer_id) counter,
ROW_NUMBER() over
	( partition by o.customer_id  order by MONTH(o.order_date)) as row
	,lag(MONTH(o.order_date),1) over (partition by o.customer_id order by o.customer_id,MONTH(o.order_date) ),
    lead(MONTH(o.order_date),1) over (partition by o.customer_id order by o.customer_id,MONTH(o.order_date))
	
from 
    sales.orders o
	left join sales.orders s on s.order_id=o.order_id
   where year(o.order_date)in(2016,2018)
   
	group by month(o.order_date),o.customer_id,year(o.order_date)
	
	
select 
customer_id,MONTH(order_date) month ,year(order_date) year,

avg(quantity*list_price)/lag(avg(quantity*list_price),1)over(order by year(order_date),month(order_date)) ratio 
from 
    sales.order_items s
    join sales.orders o on o.order_id=s.order_id
	where year(order_date)in(2016,2018)
	group by year(order_date),month(order_date),customer_id
	,lag(o.customer_id,1)over(order by month(o.order_date),year(o.order_date))
