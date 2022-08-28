
SELECT
  customer_id , avg(list_price*quantity)
FROM sales.orders o
join sales.order_items s ON s.order_id=o.order_id

GROUP BY customer_id
ORDER BY avg(quantity)desc;