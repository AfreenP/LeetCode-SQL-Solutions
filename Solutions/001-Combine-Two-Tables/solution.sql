-- Source: [ https://leetcode.com/problems/combine-two-tables/ ]
-- Title: Combine Two Tables

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
