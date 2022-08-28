
select 
customer_id,MONTH(order_date) month ,year(order_date) year,

avg(quantity*list_price)/lag(avg(quantity*list_price),1)over(order by year(order_date),month(order_date)) ratio 
from 
    sales.order_items s
    join sales.orders o on o.order_id=s.order_id
	where year(order_date)in(2016,2018)
	group by year(order_date),month(order_date),customer_id
	