
SELECT  customer_id,
        SUM (quantity*list_price)  AS total

        
FROM 
        sales.orders s
        JOIN sales.order_items o ON s.order_id =o.order_id
group by customer_id
ORDER BY total desc;