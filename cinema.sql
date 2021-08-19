DROP DATABASE IF EXISTS cinemas;
CREATE DATABASE cinemas;
USE cinemas;

-- We need to create our tables

CREATE TABLE movies(
	movie_id INT AUTO_INCREMENT,
	movie_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    age_restricted BOOLEAN NOT NULL,
    runtime TIME NOT NULL,
    screening_time DATETIME NOT NULL,
	PRIMARY KEY (movie_id)
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
    fk_movie_id INT,
    fk_customer_id INT,
    date_booking DATETIME NOT NULL,
    screen BIT NOT NULL,
    seat_number TINYINT NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (fk_movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id)
);