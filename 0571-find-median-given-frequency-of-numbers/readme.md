# LeetCode 0571-find-median-given-frequency-of-numbers

## 📝 Problem Statement

Given a table `Numbers` with the following schema:

| Column Name | Type    |
|-------------|---------|
| num         | int     |
| frequency   | int     |

Each row in the table represents a number (`num`) and its frequency (`frequency`), meaning the number `num` appears `frequency` times.

Your task is to compute the **median** of all numbers after decompressing the table.

<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> 
Stadium table:
+-----+-----------+
| num | frequency |
+-----+-----------+
| 0   | 7         |
| 1   | 1         |
| 2   | 3         |
| 3   | 1         |
+-----+-----------+

<strong>Output:</strong> 

+---------+
| median  |
+---------+
| 0.0     |
+---------+ 
