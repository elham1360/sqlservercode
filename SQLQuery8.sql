
SELECT
   staff_id ,count(staff_id) in_order_of_best_staff
FROM sales.orders
GROUP BY staff_id
ORDER BY count(staff_id)desc;