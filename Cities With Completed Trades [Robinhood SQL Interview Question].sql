SELECT city, 
       SUM(CASE
             WHEN status = 'Completed'
             then 1
             ELSE 0
             end) AS total_orders
FROM trades JOIN users
ON trades.user_id = users.user_id
GROUP BY city
ORDER BY total_orders DESC
LIMIT 3;