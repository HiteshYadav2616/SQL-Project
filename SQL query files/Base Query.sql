CREATE DATABASE pizzahut;
use pizzahut;
CREATE TABLE orders (
    order_id INT PRIMARY KEY NOT NULL,
    order_date DATE NOT NULL,
    order_time TIME NOT NULL
);

CREATE TABLE order_details (
    order_detrails_id INT PRIMARY KEY NOT NULL,
    order_id INT NOT NULL,
    pizza_id TEXT NOT NULL,
    order_time TIME NOT NULL
);

alter table order_details
change order_detrails_id order_details_id int not null;

