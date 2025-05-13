# LeetCode 569: Median Employee Salary

## 📝 Problem Statement

Given a table `Employee` with the following schema:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| company     | varchar |
| salary      | int     |

Each row contains information about an employee's ID, the company they work for, and their salary.

Write an SQL query to find the median salary for each company. The median is defined as:

- If the number of employees in the company is odd, return the middle salary.
- If the number of employees is even, return the two middle salaries.

Return the `id`, `company`, and `salary` of the employee(s) who hold the median salary/salaries.

### Example Input:

```text
+----+---------+--------+
| id | company | salary |
+----+---------+--------+
| 1  | A       | 2341   |
| 2  | A       | 341    |
| 3  | A       | 15     |
| 4  | A       | 15314  |
| 5  | A       | 451    |
| 6  | A       | 513    |
| 7  | B       | 15     |
| 8  | B       | 13     |
| 9  | B       | 1154   |
| 10 | B       | 1345   |
| 11 | B       | 1221   |
| 12 | B       | 234    |
| 13 | C       | 2345   |
| 14 | C       | 2645   |
| 15 | C       | 2645   |
| 16 | C       | 2652   |
| 17 | C       | 65     |
+----+---------+--------+

### sample output:

```text

+----+---------+--------+
| id | company | salary |
+----+---------+--------+
| 5  | A       | 451    |
| 6  | A       | 513    |
| 12 | B       | 234    |
| 9  | B       | 1154   |
| 14 | C       | 2645   |
+----+---------+--------+


