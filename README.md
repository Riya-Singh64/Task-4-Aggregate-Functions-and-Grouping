# Task-4-Aggregate-Functions-and-Grouping
This task demonstrates how to apply aggregate functions to summarize data and group results in SQL.
Performed SQL queries using aggregate functions and `GROUP BY` clause on the `products` table.

# Table Used:
**products**
- Columns: productID, name, category, price, stock

# Operations Performed:
- Used aggregate functions like SUM(), COUNT(), AVG() on numeric columns (`price`, `stock`)
- Grouped data by `category'
- Filtered grouped data using `HAVING`

# Queries:
- Total number of products:  
  select count(*) from products;

- Average product price:  
  select avg(price) from products;`

-Sum of price:
select sum(price) from products;

- Total stock per category:  
select category, sum(stock) as total_stock from products group by category;

- Categories with average price > ₹500:  
select category, sum(stock) as total_stock from products group by category having sum(stock) > 100;

# Result:
Gained the ability to summarize and analyze product data effectively using SQL aggregate functions and grouping.




