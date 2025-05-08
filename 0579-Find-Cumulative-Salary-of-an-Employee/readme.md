# LeetCode SQL - 0579-Find-Cumulative-Salary-of-an-Employee
**Problem Link:** [Find Cumulative Salary of an Employee](https://leetcode.com/problems/find-cumulative-salary-of-an-employee/)

## 🧩 Problem Description

You are given a table `Employee` that stores monthly salary records of employees for the year 2020.

### Table: Employee

| Column Name | Type |
|-------------|------|
| id          | int  |
| month       | int  |
| salary      | int  |

- `(id, month)` is the **primary key**.
- Each row represents the salary of an employee in a specific month.
- `month` ranges from 1 to 12 (i.e., months in the year 2020).

### Objective

Calculate the **cumulative 3-month salary summary** for every employee. The summary is defined as:

- For each month, calculate the **sum of the salary for that month and the previous two months**.
- If an employee **did not work** in previous months, assume their salary for those months is 0.
- **Do not include the 3-month sum** for:
  - The **most recent month** the employee worked.
  - Any **month the employee didn’t work**.

### Output

Return the result table with the following columns:
- `id` (employee id)
- `month`
- `salary` (3-month cumulative salary)

The output must be:
- **Sorted by `id` in ascending order**
- If multiple records for the same employee, then **sorted by `month` in descending order**

---

## 💡 Example

### Input

```text
Employee table:

+----+-------+--------+
| id | month | salary |
+----+-------+--------+
| 1  | 1     | 20     |
| 2  | 1     | 20     |
| 1  | 2     | 30     |
| 2  | 2     | 30     |
| 3  | 2     | 40     |
| 1  | 3     | 40     |
| 3  | 3     | 60     |
| 1  | 4     | 60     |
| 3  | 4     | 70     |
| 1  | 7     | 90     |
| 1  | 8     | 90     |
+----+-------+--------+

Output:
+----+-------+--------+
| id | month | salary |
+----+-------+--------+
| 1  | 7     | 90     |
| 1  | 4     | 130    |
| 1  | 3     | 90     |
| 1  | 2     | 50     |
| 1  | 1     | 20     |
| 2  | 1     | 20     |
| 3  | 3     | 100    |
| 3  | 2     | 40     |
+----+-------+--------+

