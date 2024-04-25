# Write your MySQL query statement below
with cte as(
select b.name as Department,a.name as Employee,a.Salary
,dense_rank() over(partition by a.departmentId order by salary desc ) as rank_departmentwise
from Employee a 
join Department b on a.departmentId=b.id
)

select Department,Employee,Salary from cte where rank_departmentwise<4