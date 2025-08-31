-- 11. Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    category,
    ROUND(SUM(quantity * price) / (SELECT 
                    ROUND(SUM(quantity * price), 2) AS total_revenue
                FROM
                    order_details
                        JOIN
                    pizzas ON order_details.pizza_id = pizzas.pizza_id) * 100,
            2) AS total_sales
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category;