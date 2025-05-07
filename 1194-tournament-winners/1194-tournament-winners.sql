with cte as (
select player_id,SUM(score) as total_score from (
	select match_id,first_player as player_id,first_score as score 
	from hard.matches
	UNION ALL
	select match_id,second_player as player_id,second_score as score 
	from hard.matches
	)a
group by player_id
),

cte2 as(
select *,ROW_NUMBER() over(partition by group_id order by player_id) as rn from (
	select player_id,total_score,group_id,MAX(total_score) over(partition by group_id order by group_id) as mx from(
		select a.*,b.group_id from cte a 
		join hard.players b on a.player_id = b.player_id
		)a
	)a
where total_score = mx)


select group_id,player_id
from cte2
where rn=1
