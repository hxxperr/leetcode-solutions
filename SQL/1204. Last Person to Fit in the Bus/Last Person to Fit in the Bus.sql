with cte as
(
    select 
        person_name,
        sum(weight) over(order by turn) as csum
    from queue
)
select top 1 person_name 
from cte 
where csum <= 1000
order by csum desc 