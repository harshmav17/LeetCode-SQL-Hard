with cte as (
select id,company,ROW_NUMBER() OVER(partition by company order by salary) as rn,salary 
from Employee
),


cte2 as (
select company,max_rn,case when max_rn%2 <> 0 then floor(max_rn/2)+1 end as odd_median,
              case when max_rn%2 = 0 then max_rn/2 end as even_median1,
              case when max_rn%2 = 0 then max_rn/2+1 end as even_median2         
from (
  select company,max(rn) as max_rn
  from cte
  group by company
  )a
)

select * from (
select a.id,a.company,case when max_rn%2 <> 0 and odd_median = rn then salary
                when max_rn%2 = 0 and even_median1 = rn then salary
                when max_rn%2 = 0 and even_median2 = rn then salary
      end as salary
from cte a
join cte2 b on a.company = b.company
)a
where salary is not null
