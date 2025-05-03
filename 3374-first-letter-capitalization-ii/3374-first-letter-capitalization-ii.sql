/* Write your T-SQL query statement below */
with cte as (
select *,case when each_word_length <> 0 then CONCAT(UPPER(LEFT(value,1)),Lower(RIGHT(value,each_word_length-1))) else ' ' end as up  
from (
select *,len(value) as each_word_length
from user_content 
outer apply string_split(REPLACE(content_text,'-','  '),' ')
)a
)

select content_id,content_text as original_text,REPLACE(REPLACE(STRING_AGG(up,' '),'  ','-'),'- ','-') as converted_text from cte
group by content_id,content_text
order by content_id