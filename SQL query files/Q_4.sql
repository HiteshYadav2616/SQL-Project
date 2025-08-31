-- 4. Identify the most common pizza size ordered.

SELECT 
    size, COUNT(order_details_id) AS orders
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY size
ORDER BY orders DESC
LIMIT 1;