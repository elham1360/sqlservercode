SELECT
  first_name,last_name, AVG(list_price*quantity) avg_of_basket
FROM sales.orders o
JOIN sales.order_items s ON s.order_id=o.order_id
JOIN sales.customers c ON c.customer_id=o.customer_id
GROUP BY first_name,last_name
ORDER BY AVG(list_price*quantity)desc