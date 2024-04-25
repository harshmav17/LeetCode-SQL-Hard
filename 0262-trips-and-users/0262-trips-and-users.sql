with cte as (
select distinct users_id,case when role='driver' then 1 else 0 end as is_driver
from Users where Banned = 'No'),

cte2 as(
select request_at,count(*) total_cancelled from trips 
where client_id in (select distinct users_id from cte where is_driver=0) and driver_id  in (select distinct users_id from cte where is_driver=1) and status<>'completed'
group by request_at),

cte3 as(
select request_at,count(*) total_trips 
from trips
where (client_id in (select distinct users_id from cte where is_driver=0) and driver_id in (select distinct users_id from cte where is_driver=1)) 
group by request_at
)


select b.request_at as Day,round(ifnull(a.total_cancelled,0)/b.total_trips,2) as 
`Cancellation Rate`
from cte2 a 
right join cte3 b on a.request_at = b.request_at 
where b.request_at between "2013-10-01" and "2013-10-03";

#select * from cte2;

