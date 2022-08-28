SELECT
   first_name ,count(customer_id)
   
   
FROM sales.order_items i
  
	LEFT JOIN sales.orders o
		ON o.order_id = i.order_id
	left join   sales.customers c
	    on o.customer_id=c.customer_id
	    

GROUP BY first_name
    
ORDER BY
  customer_id;
    