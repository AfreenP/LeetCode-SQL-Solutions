# Question Link: 
[LeetCode - Combine Two Tables](https://leetcode.com/problems/combine-two-tables/)

# My Approach
In this problem, the goal is to find the first name, last name, city, and state for each person. We are given two tables, 
Person and Address, which are connected by the personId column.
I noticed that some people might not have an address listed in the Address table. To handle this, I used a LEFT JOIN. 
This ensures that everyone from the Person table is included in the results, and it simply fills in null for those who 
don't have a corresponding record in the Address table.
