-- 13. Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select category, name, revenue from
(select category, name, revenue, rank() over(partition by category order by revenue desc) as rn from
(SELECT 
    category, name, SUM(quantity * price) AS revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category , name) as a) as b
where rn <= 3;