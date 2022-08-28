SELECT 
      store_id,brand_id,order_date,DATEPART(MONTH,order_date) M,
	   sum(quantity) quantity_sales,  max(quantity) maximum, 
    FROM 
        sales.order_items o
    JOIN  sales.orders s ON o.order_id=s.order_id
	JOIN production.products p ON o.product_id=p.product_id
    GROUP BY grouping sets ( cube (year (order_date),month(order_date),DATEPART(MONTH,order_date) ,order_date),ROLLUP (store_id,brand_id))
	
	ORDER BY store_id



