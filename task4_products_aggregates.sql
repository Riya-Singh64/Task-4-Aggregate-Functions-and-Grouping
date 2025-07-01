create database ecommerce;
use ecommerce;
create table customers(customerID int primary key, name varchar(25), email varchar(200), phone varchar(25));
create table products(productID int primary key, name varchar(25), price varchar(200), stock int);
create table orders(orderID int primary key, customerID int, orderdate date, totalamt decimal(10,2), 
foreign key (customerID) references customers(customerID));
create table OrderItems(OrderItemsID int primary key, orderID int, productID int, quantityID int,
price decimal(10,2), foreign key (orderID) references orders(orderID), foreign key (productID) references 
products(productID));
create table payments(paymentID int primary key, orderID int, paymentdate date, amount decimal(10,2), 
foreign key (orderID) references orders(orderID));
INSERT INTO customers (customerID, name, email, phone)
VALUES (1, 'Riya Singh', 'riya@example.com', '9999999999');
INSERT INTO product (productID, name, price, stock) VALUES (1, 'Laptop', NULL, 10);  
ALTER TABLE products MODIFY price VARCHAR(20) DEFAULT 'Not available';
INSERT INTO products (productID, name, stock) VALUES (2, 'Mouse', 50);  
UPDATE products SET price = '₹50000' WHERE productID = 1;
DELETE FROM customers WHERE customerID = 5;

drop table product;
create table product (
    productID INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);
INSERT INTO product VALUES 
(1, 'Laptop', 'Electronics', 50000, 20),
(2, 'Mobile', 'Electronics', 15000, 50),
(3, 'Shoes', 'Fashion', 2000, 100),
(4, 'Headphones', 'Electronics', 3000, 15),
(5, 'Notebook', 'Stationery', 50, 300);
select * from product;
select name, price from product;
SELECT name, price, stock FROM product;
select * from product where category = 'Electronics';
select * from product where category = 'Electronics' and price < 40000;
select * from product where name like '%note%';   
select * from product order by price desc limit 3;

drop table OrderItems;
drop table orders;
drop table payments;
drop table products;

create table products (productID int primary key, name varchar(50),category varchar(50),
price decimal(10, 2),stock int);
insert into products values 
(11, 'Laptop', 'Electronics', 50000, 20),
(22, 'Mobile', 'Electronics', 15000, 50),
(33, 'Shoes', 'Fashion', 2000, 100),
(44, 'Headphones', 'Electronics', 3000, 15),
(55, 'Notebook', 'Stationery', 50, 300);
select* from products;
select sum(price) from products;
select count(*) from products;
select avg(price) from products;
select category from products group by category;
select category, sum(stock) as total_stock from products group by category;
select category, sum(stock) as total_stock from products group by category having sum(stock) > 100;
