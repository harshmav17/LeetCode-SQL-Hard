with cte as (
select num,frequency,1 as cnt 
from Numbers
UNION ALL
select num,frequency-1,cnt+1 as cnt
from cte
where frequency > 1
),

cte2 as(
  select a.num,row_number() over(order by a.num) as rn from cte a
  join Numbers b on a.num = b.num
),
cte3 as (
select count(*) as cnt from cte2)


select num 
from cte2 a, cte3 b
where rn = cnt%2 + 1
