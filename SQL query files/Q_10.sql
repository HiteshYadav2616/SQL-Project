-- 10. Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    name, ROUND(SUM(quantity * price), 2) AS revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY name
ORDER BY revenue DESC
LIMIT 3;