# 🌍 Students Report By Geography

**Question ID**: 618 🔒    
---

## 🧾 Problem Statement

You're given a table of students containing their **names** and the **continent** they come from. The school has students only from the following continents:
- **Asia**
- **Europe**
- **America**

Your task is to **pivot** the `continent` column so that:
- Each continent becomes a column (`America`, `Asia`, `Europe`)
- Student names appear in **alphabetical order** under their respective continent
- Output columns must appear in the order: **America**, **Asia**, **Europe**
- The result must be aligned such that all names appear row-wise and the rest of the cells are filled with `NULL` where applicable

---

## 📊 Table Schema

### `Student`

| Column Name | Data Type |
|-------------|-----------|
| name        | varchar   |
| continent   | varchar   |

- This table **may contain duplicate rows**.
- Each row indicates the name of a student and the continent they come from.

---

## 📌 Example

### Input

| name   | continent |
|--------|-----------|
| Jane   | America   |
| Pascal | Europe    |
| Xi     | Asia      |
| Jack   | America   |

### Output

| America | Asia | Europe |
|---------|------|--------|
| Jack    | Xi   | Pascal |
| Jane    | NULL | NULL   |

---

## 🧠 Approach

To solve this:

1. **Filter and sort** names by continent and in alphabetical order.
2. **Assign row numbers** within each continent using `ROW_NUMBER()`.
3. **Pivot** the data using conditional aggregation based on row number.
4. **Join** on row numbers to align names from each continent correctly.

---
