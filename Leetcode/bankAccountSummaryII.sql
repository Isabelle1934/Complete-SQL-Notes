-- 1587. Bank Account Summary II

-- Write a solution to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.
-- Return the result table in any order.

SELECT u.name AS name,
       SUM(t.amount) AS balance
FROM Users u
JOIN Transactions t
ON u.account = t.account
GROUP BY u.name, u.account
HAVING SUM(t.amount) > 10000;