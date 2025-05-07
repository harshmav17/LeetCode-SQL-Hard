# 🏆 Tournament Winners

[Link to Problem](https://leetcode.com/problems/tournament-winners/)

## 📘 Table Schemas

### Players Table

| Column Name | Type |
|-------------|------|
| player_id   | int  |
| group_id    | int  |

- `player_id` is the **primary key**.
- Each row indicates which group a player belongs to.

### Matches Table

| Column Name   | Type |
|---------------|------|
| match_id      | int  |
| first_player  | int  |
| second_player | int  |
| first_score   | int  |
| second_score  | int  |

- `match_id` is the **primary key**.
- Each row represents a match between two players (who are always from the same group).
- `first_score` and `second_score` contain the respective points scored.

---

## 🎯 Problem Statement

Find the **winner in each group**.

- The **winner** is the player with the **maximum total score** in that group.
- In case of a tie, the **player with the lowest player_id** should be selected.

Return a table with the columns:

| group_id | player_id |
|----------|-----------|
|   int    |    int    |

The result can be returned in **any order**.

---

## 💡 Example

### Input

**Players Table**

| player_id | group_id |
|-----------|----------|
| 15        | 1        |
| 25        | 1        |
| 30        | 1        |
| 45        | 1        |
| 10        | 2        |
| 35        | 2        |
| 50        | 2        |
| 20        | 3        |
| 40        | 3        |

**Matches Table**

| match_id | first_player | second_player | first_score | second_score |
|----------|--------------|---------------|-------------|--------------|
| 1        | 15           | 45            | 3           | 0            |
| 2        | 30           | 25            | 1           | 2            |
| 3        | 30           | 15            | 2           | 0            |
| 4        | 40           | 20            | 5           | 2            |
| 5        | 35           | 50            | 1           | 1            |

### Output

| group_id | player_id |
|----------|-----------|
| 1        | 15        |
| 2        | 35        |
| 3        | 40        |

---

## 🧠 Notes

- You may need to **aggregate scores per player**, join with the `Players` table to get their `group_id`, and use a **ranking technique** (like `ROW_NUMBER()` or `RANK()`) to pick the top scorer per group.
- Handle **ties** by selecting the lowest `player_id`.

---
