SELECT o.customer_id ,o.store_id,s.store_id,s.customer_id

from sales.orders s
join sales.orders o on s.customer_id=o.customer_id
where s.store_id!=o.store_id
GROUP BY customer_id , store_id
having  count(DISTINCT store_id)>1


select distinct customer_id,store_id
into #cuo
from sales.orders
select customer_id , count(1)
from #cuo
group by customer_id
having  count(1)>1


select city, count(1) from sales.stores
group by city
having  count(1)>1
