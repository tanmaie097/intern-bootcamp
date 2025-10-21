1.	Show the first 10 customers from the customers table.
Select * from customers limit 10;
2.	Display the names and emails of all customers.
Select name, email from customers;
3.	List the first 5 products along with their product_name, category, and price.
Select product_name, category, price from products limit 5;
4.	Retrieve all columns from the transactions table but limit the result to 5 rows.
select * from transactions limit 5;
5.	Show the top 10 most expensive products from the products table.
select * from products order by price desc limit 10 ;

🔹 Section 2: Filtering Data (WHERE)
6.	Find all customers from Mcmillanland.
select * from customers where city = 'Mcmillanland';
7.	Retrieve all orders with a status of 'Delivered'.
select * from orders where status = 'Delivered';
8.	Get all products priced between 100 and 500.
select * from products where price > 100 and price < 500;
9.	Find all transactions above 1000 AED.
select * from transactions where amount > 1000;
10.	List all orders placed before 2025-01-01.
select * from orders where order_date < '2025-01-01';

🔹 Section 3: Sorting & Limiting (ORDER BY, LIMIT)
11.	Show the 5 newest customers based on created_at.
select * from customers order by created_at desc limit 5;
12.	Display products sorted by stock in ascending order.
select * from products order by stock asc limit 3;
13.	Show the highest 10 transaction amounts.
select amounts from transactions order by amounts desc;
14.	Find the latest 5 transactions by transaction_date.
select * from transactions order by   transaction_date desc;
15.	Display customers ordered alphabetically by city.
select * from customers order by city asc;

🔹 Section 4: DISTINCT & Simple Aggregates
16.	List all unique payment methods from the transactions table.
select distinct payment_method from transactions limit 10; 
17.	Count how many distinct cities your customers come from.
select distinct city from customers;
18.	Calculate the average price of all products.
select product_name, avg(price) from products group by product_name;
19.	Find the minimum and maximum transaction amount.
select min(amount),max(amount) from transactions;
20.	Count how many orders are currently marked as “Pending”.
select count(status) from orders where status = 'Pending';

🧮 Bonus Challenge: Intro to Analysis (Intermediate)
21.	For each payment method, show the total and average transaction amount.
select payment_method, sum(amount) as total_amt, avg(amount) as avg_amt from transactions group by payment_method;
22.	Find the total revenue per day using the order_items table.
select distinct orders.order_date, sum(quantity * unit_price) as revenue from orders join order_items on orders.order_id = order_items.order_id
group by order_date;
23.	Get the top 5 customers who placed the most orders.
select customers.name , count(orders.order_id) as count_orders from customers join orders on customers.customer_id = orders.customer_id 
group by customers.name order by count_orders desc limit 5 ;

24.	List products with zero stock.
select * from products where stock = 0;

25.	Find the most common product category.
select category, count(product_name) as count_tot from products 
group by category order by count_tot  desc limit 1;

26.	Retrieve the total number of transactions per month.
select extract( month from transaction_date::date) as months, count(transaction_id) as transactions from transactions
group by months
order by months;

27.	List all orders with their customer names (JOIN orders + customers).
select orders.order_id, customers.name as orders from orders join customers on  
customers.customer_id = orders.customer_id;

28.	Display all transactions with their corresponding order status 
select transaction_id, orders.status from transactions join orders on orders.order_id = transactions.order_id;


29.	Show the average order size (total_price) by product category.
select avg(price), product

30.	Identify the highest-value transaction and its payment method.
select amount, payment_method from transactions order by amount desc limit 1; 
db_1=> select  payment_method, max(amount) from transactions group by payment_method ;