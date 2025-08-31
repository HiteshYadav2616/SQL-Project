# Pizza Store SQL Project

## Project Overview
This project explores sales and customer behavior data for a Pizza Store using SQL.  
The goal is to answer key business questions such as **total revenue**, **best-selling pizzas**, **order patterns**, and **category-wise performance**.  

The project demonstrates SQL skills including:
- Database creation & schema design
- Complex joins
- Aggregations (`SUM`, `COUNT`, `AVG`)
- Subqueries & derived tables
- Grouping & ordering
- Time-based analysis

---

## Database Schema
The database `pizzahut` consists of the following tables:

- **orders** → order details (`order_id`, `order_date`, `order_time`)  
- **order_details** → order-item mapping (`order_details_id`, `order_id`, `pizza_id`, `quantity`)  
- **pizzas** → pizza information (`pizza_id`, `pizza_type_id`, `size`, `price`)  
- **pizza_types** → pizza category & name (`pizza_type_id`, `name`, `category`)  

---

## Business Questions & Queries

### Retrieve the total number of orders placed
```sql
SELECT COUNT(order_id) AS total_orders FROM orders;
```
