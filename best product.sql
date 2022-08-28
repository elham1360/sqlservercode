SELECT 
   product_name,sum(quantity) as total_product 
FROM  
    sales.order_items  s
	JOIN production.products p ON s.product_id=p.product_id
	
GROUP BY product_name
ORDER BY total_product desc
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;