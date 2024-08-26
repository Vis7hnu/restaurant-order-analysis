-- 1. Combine the menu_items and order_details tables into a single table

SELECT * FROM order_details o inner JOIN menu_items m
ON o.item_id = m.menu_item_id;

-- 2. What were the least and most ordered items ? What categories where they in ?

SELECT item_name, category, COUNT(order_details_id) AS num_purchase
FROM order_details o inner JOIN menu_items m
ON o.item_id = m.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchase DESC;

-- 3. What were the top 5 orders that spent the most money ?

SELECT order_id, SUM(price) AS total_amount
FROM order_details o inner JOIN menu_items m
ON o.item_id = m.menu_item_id
GROUP BY order_id
ORDER BY total_amount DESC
LIMIT 5 ;

-- 4. View the details of the highest spent order. What insights can you gather from them ?

SELECT *
FROM order_details o inner JOIN menu_items m
ON o.item_id = m.menu_item_id
WHERE order_id = 440 ;

-- 5. View the details of top 5 highest spent orders. What insights can you gather from them ?

SELECT order_id, category, COUNT(item_id) AS item
FROM order_details o inner JOIN menu_items m
ON o.item_id = m.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675 )
GROUP BY order_id, category;