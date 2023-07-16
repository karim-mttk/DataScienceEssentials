--GOAL: find non-deleted email addresses
SELECT id AS user_id, email_address
FROM dsv1069.users
WHERE deleted_at IS NULL

--GOAL: count the number of items for sale in each category
SELECT category, COUNT(id) AS item_count
FROM dsv1069.items 
GROUP BY category
ORDER BY item_count DESC

--GOAL: JOIN the users table to the orders table
SELECT *
FROM dsv1069.orders
JOIN dsv1069.users
ON users.id = orders.user_id

--Compute the number of items which has been ordered
SELECT COUNT(DISTINCT orders.item_id) AS item_count
FROM dsv1069.orders

