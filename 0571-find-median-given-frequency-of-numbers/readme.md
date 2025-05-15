# LeetCode 0571-find-median-given-frequency-of-numbers

## 📝 Problem Statement

Given a table `Numbers` with the following schema:

| Column Name | Type    |
|-------------|---------|
| num         | int     |
| frequency   | int     |

Each row in the table represents a number (`num`) and its frequency (`frequency`), meaning the number `num` appears `frequency` times.

Your task is to compute the **median** of all numbers after decompressing the table.

### Example Input

```text
+-----+-----------+
| num | frequency |
+-----+-----------+
| 0   | 7         |
| 1   | 1         |
| 2   | 3         |
| 3   | 1         |
+-----+-----------+

### Example Output

```text
+---------+
| median  |
+---------+
| 0.0     |
+---------+
