use restaurant_db;

-- Objective 1 
-- Exploring the items table

-- 1. View the menu_items table 
-- Answer :

 select * from menu_items;

-- 2.write a query to find the number of items on the menu
-- Answer :

select count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?
-- Answer:

Select * from menu_items order by price;

Select * from menu_items order by price desc;

 -- or
 
 Select max(price) as MAX,min(price) AS MIN from menu_items ;

-- 4. How many Italian dishes are on the menu? 
-- Answer:

Select count(item_name) from menu_items where category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?
-- Answer:

select item_name,price from menu_items \
where category = 'Italian' 
order by price;

select item_name,price from menu_items 
where category = 'Italian'
order by price DESC;

-- 5.How many dishes are in each category? What is the average dish price within each category?
-- Answer:

select category,count(item_name) as no_of_items from menu_items
group by category;

select category,round(avg(price),0) as AvgPrice from menu_items
group by category
order by AvgPrice desc;
