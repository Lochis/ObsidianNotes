/*

updated based on  

https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database

--------------------------------------------------------------------
© 2017 sqlservertutorial.net All Rights Reserved
--------------------------------------------------------------------
Name   : BikeStores
Link   : http://www.sqlservertutorial.net/load-sample-database/
Version: 1.0

By -- Yin Hua Li - Dec 2024
--------------------------------------------------------------------
*/



CREATE TABLE DB4BikeStore_categories (
	category_id INT PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);


CREATE TABLE DB4BikeStore_brands (
	brand_id INT PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);


CREATE TABLE DB4BikeStore_products (
	product_id INT PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES DB4BikeStore_categories (category_id),
	FOREIGN KEY (brand_id) REFERENCES DB4BikeStore_brands (brand_id)
);



CREATE TABLE DB4BikeStore_sales_customers (
	customer_id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 CACHE 1000) PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5)
);

CREATE TABLE DB4BikeStore_sales_stores (
	store_id INT PRIMARY KEY,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	state VARCHAR (10),
	zip_code VARCHAR (5)
);

CREATE TABLE DB4BikeStore_sales_staffs (
	staff_id INT PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	active INT NOT NULL,
	store_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (store_id) REFERENCES DB4BikeStore_sales_stores (store_id) ON DELETE CASCADE,
	FOREIGN KEY (manager_id) REFERENCES DB4BikeStore_sales_staffs (staff_id)
);


CREATE TABLE DB4BikeStore_sales_orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_status INT NOT NULL,
	-- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	store_id INT NOT NULL,
	staff_id INT NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES DB4BikeStore_sales_customers (customer_id),
	FOREIGN KEY (store_id) REFERENCES DB4BikeStore_sales_stores (store_id),
	FOREIGN KEY (staff_id) REFERENCES DB4BikeStore_sales_staffs (staff_id)
);


CREATE TABLE DB4BikeStore_sales_order_items (
	order_id INT,
	item_id INT,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	discount DECIMAL (4, 2) DEFAULT 0,
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (order_id) REFERENCES DB4BikeStore_sales_orders (order_id),
	FOREIGN KEY (product_id) REFERENCES DB4BikeStore_products (product_id)
);

CREATE TABLE DB4BikeStore_stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id),
	FOREIGN KEY (store_id) REFERENCES DB4BikeStore_sales_stores (store_id) ,
	FOREIGN KEY (product_id) REFERENCES DB4BikeStore_products (product_id) 
);