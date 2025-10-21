
🧩 SQL Practice — Joins, Group By, and Aggregation
1.	Customer Orders Summary
Retrieve each customer’s name and the total number of orders they have placed.
select customers.name, count(orders.order_id) from orders
join customers on customers.customer_id = orders.customer_id
group by customers.name;
//tryno 

2.	Total Quantity per Product
For each product, calculate the total quantity sold across all orders.

select products.product_id, products.product_name, sum(order_items.quantity) from products 
join order_items on products.product_id = order_items.product_id
group by  products.product_name, products.product_id ;

3.	High-Spending Customers
List all customers who have spent more than 5,000 in total purchases.
customers,orders,order_items
select customers.name, order_items.total_price from orders
join customers on orders.customer_id = customers.customer_id 
join order_items on order_items.order_id = orders.order_id
where total_price > 1000
group by customers.name , order_items.total_price ;


4.	Revenue by Product Category
Show the total revenue generated for each product category, sorted from highest to lowest.
select products.category, sum (quantity*unit_price ) as revenue from products 
join order_items on products.product_id = order_items.product_id
group by products.category;

5.	Average Order Value per Customer
Calculate the average value of each customer’s orders.



6.	Unordered Products
Find all products that have never been ordered.
7.	Customers Without Orders
Display customers who haven’t placed any orders yet.
8.	Most Popular Product
Identify the product that has been ordered the most (by total quantity sold).
9.	Top 5 Customers by Spending
Find the 5 customers who have spent the most money overall.
10.	Monthly Revenue Trend
Calculate the total revenue for each month based on order dates.
11.	Category with Highest Average Price
For each category, compute the average product price and identify the highest one.
12.	Customer–Category Combination
Find which product category each customer buys from the most.
13.	Orders with Multiple Products
List all orders that contain more than one product.
14.	Products Bought by a Specific Customer
Show all products purchased by the customer named “Maria White”.
15.	Top-Selling Category by Revenue
Determine which product category generates the highest total revenue.
16.	Inactive Customers in the Last 3 Months
List customers who have not made any purchases in the last three months.
17.	Repeat Buyers
Identify customers who have placed more than one order.
18.	Average Quantity per Order by Category
For each category, calculate the average quantity of products ordered per order.
19.	Customer Count per City
Display the number of customers living in each city.
20.	Products Purchased by All Customers
Find products that have been purchased by every customer at least once.

