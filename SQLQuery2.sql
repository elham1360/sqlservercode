SELECT 
   item_id,sum(order_id) order_sum,max(order_id) order_max,count(order_id)order_count,avg(order_id)order_avg
FROM
   sales.order_items
GROUP BY
  item_id


