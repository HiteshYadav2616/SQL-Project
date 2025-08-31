-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    category, SUM(quantity) AS total_quantity
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category
ORDER BY total_quantity DESC;