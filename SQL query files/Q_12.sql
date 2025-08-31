-- 12. Analyze the cumulative revenue generated over time.
select order_date, round(sum(revenue) over (order by order_date),2) as cum_revenue from 
(SELECT 
    order_date, SUM(quantity * price) AS revenue
FROM
    orders
        JOIN
    order_details ON order_details.order_id = orders.order_id
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
GROUP BY order_date) as revenue_per_day;