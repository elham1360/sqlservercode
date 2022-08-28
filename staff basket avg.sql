
SELECT
  staff_id, avg(list_price*quantity)
FROM sales.orders o
join sales.order_items s ON s.order_id=o.order_id

GROUP BY staff_id
ORDER BY avg(quantity)desc;