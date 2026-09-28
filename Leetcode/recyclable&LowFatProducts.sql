-- 1757. Recyclable and Low Fat Products

-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

SELECT p.product_id AS product_id
FROM Products p
WHERE p.low_fats = 'Y' AND p.recyclable = 'Y';
