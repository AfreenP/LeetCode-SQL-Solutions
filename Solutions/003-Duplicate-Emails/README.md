# 3 Question Link: 182. Duplicate Emails
[Leetcode : 182. Duplicate Emails](https://leetcode.com/problems/duplicate-emails/)

# My Approach

We need to find emails that appear more than once.

I used `GROUP BY` to group identical emails together and `HAVING COUNT(email) > 1` to keep only the emails that occur multiple times.

### Why GROUP BY + HAVING?

- `GROUP BY` combines rows with the same email.
- `COUNT()` tells us how many times each email appears.
- `HAVING` filters the grouped results.
- `WHERE` cannot be used with `COUNT()` because `COUNT()` is an aggregate function.

**Rule to remember:**  
> Use `GROUP BY` + `HAVING` when we need to find groups that meet a condition based on their count.
