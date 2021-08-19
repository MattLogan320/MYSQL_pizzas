-- Creating and using our database

CREATE DATABASE pizzeria;
USE pizzeria;

-- We need to create our tables

CREATE TABLE pizzas(
	pizza_id INT AUTO_INCREMENT,
	pizza_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
    vegetarian BOOLEAN NOT NULL,
	PRIMARY KEY (pizza_id)
);


CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    PRIMARY KEY (customer_id)
);


CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
    fk_pizza_id INT,
    fk_customer_id INT,
    date_booking DATETIME NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (fk_pizza_id) REFERENCES pizzas(pizza_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id)
);