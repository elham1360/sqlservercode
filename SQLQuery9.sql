SELECT
   product_id ,count(product_id) in_order_of_best_product
FROM sales.order_items
GROUP BY product_id
ORDER BY count(product_id)desc;