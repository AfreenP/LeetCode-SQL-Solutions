# 4 Question : 183. Customers Who Never Order

[Leetcode : 183. Customers Who Never Order](https://leetcode.com/problems/customers-who-never-order/description/)

# My Approach

I used a `LEFT JOIN` to connect Customers with Orders.

`LEFT JOIN` keeps all customers, including those who have no matching order.

Then I used `WHERE o.customerId IS NULL` to find customers who never placed an order.

**Rule to remember:**

> Use `LEFT JOIN` + `IS NULL` to find records in one table that have no matching record in another table.
