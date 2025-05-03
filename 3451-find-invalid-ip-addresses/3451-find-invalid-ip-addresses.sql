/* Write your T-SQL query statement below */
with cte as(
select log_id,ip,value --,case when value > 255 or value like '0%' then 0 else 1 end as is_valid
from logs a
outer apply string_split(ip,'.') as sep
),
--select * from cte
cte2 as (
select log_id,ip,case when value > 255 or value like '0%' or octet_count <> 4 then 0 else 1 end as is_valid 
from (
select a.log_id,a.ip,a.value,b.octet_count 
from cte a inner join (
select log_id,count(value) as octet_count
from cte
group by log_id) b on a.log_id = b.log_id
)a)

select ip,count(log_id) as invalid_count 
from(
select distinct log_id,ip 
from cte2
where is_valid = 0
)a
group by ip
order by invalid_count desc,ip desc