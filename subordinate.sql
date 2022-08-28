SELECT
    t.first_name,t.last_name,COUNT(distinct s.manager_id) numbers_of_subordinates
	FROM sales.staffs t
    JOIN sales.staffs s  
	ON t.staff_id=s.manager_id
	GROUP BY t.first_name,t.last_name


	


	SELECT
    t.first_name,t.last_name,AVG(quantity*list_price) avg_sales_subordinaits,COUNT(distinct s.staff_id) numbers_of_subordinates

	FROM sales.staffs t
    JOIN sales.staffs s  
	ON t.staff_id=s.manager_id
	JOIN sales.orders o 
	ON s.staff_id=o.staff_id
	JOIN sales.order_items i 
	ON o.order_id=i.order_id
    GROUP BY t.first_name,t.last_name
