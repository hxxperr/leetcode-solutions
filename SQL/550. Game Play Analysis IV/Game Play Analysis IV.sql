with cte as 
(
select 
	player_id,
    event_date,
    row_number() over (partition by player_id order by event_date) as 'rn'
from Activity
)
select ROUND(COUNT(cte.rn) * 1.0 /COUNT(distinct a.player_id),2) fraction
from Activity a left join cte on a.player_id = cte.player_id and datediff(day,a.event_date, cte.event_date) = 1 and cte.rn = 2