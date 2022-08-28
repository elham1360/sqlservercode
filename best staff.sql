SELECT 
   first_name,last_name,sum(quantity*list_price) as total 
FROM  
    sales.orders  s
	JOIN sales.order_items o ON s.order_id=o.order_id
	JOIN sales.staffs c ON s.staff_id=c.staff_id
GROUP BY first_name,last_name
ORDER BY total desc
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;