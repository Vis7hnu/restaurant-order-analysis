-- Objective 2
-- Exploring the orders table

-- 1. View the order_details table. What is the date range of the table?
-- Answer:

select * from order_details;

select min(order_date) as Min_Date_range, Max(order_date) AS Max_Date_range
from order_details;

-- 2. How many orders were made within this date range? How many items were ordered within this date range?


select count(distinct order_id) as no_of_orders from order_details;

select count(order_details_id) as no_of_orders from order_details
where order_date Between '2023-01-01' and '2023-03--31';


-- 3. Which orders had the most number of items?

select order_id,count(item_id) as items from order_details 
group by order_id;


-- 4. How many orders had more than 12 items?

select count(*) from
(select order_id,count(item_id) as items from order_details
group by order_id
having items > 12 
order by items desc)AS Num_orders;
