# 1 Question Link: 181. Employees Earning More Than Their Managers
[LeetCode -Employees Earning More Than Their Managers](https://leetcode.com/problems/employees-earning-more-than-their-managers/description/)

# My Approach
In this problem, the goal is to find employees who earn more than their managers.
The Employee table contains both employees and managers. The `managerId` column tells us which employee is the manager of each employee.
I used a SELF JOIN to join the Employee table with itself. One copy represents the employee, and the other represents their manager.
After joining them using `employee.managerId = manager.id`, I compared their salaries. If the employee's salary is greater than the manager's salary, 
I included the employee's name in the result.
Note: whenever we see a relationship between rows in the same table, a self-JOIN should immediately come to mind.
Why?
•	Employee and Manager are both stored in the same table. 
•	We need to compare two rows from the same table → perfect use case for a Self JOIN. 
•	Clear and directly represents the relationship: employee → manager. 
•	Simple and readable. 
Why not the others?
•	LEFT JOIN: Works, but unnecessary because employees without managers don't need to be compared. 
•	Subquery: Works but is less direct/readable here. We're comparing two related rows, so JOIN expresses the relationship better. 
Rule to remember:
When we need to compare related rows within the same table, think SELF JOIN first.
