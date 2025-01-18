with cte as
(
    select num, COUNT(*) rn from MyNumbers group by num
)
select MAX(n.num) num
from MyNumbers n join cte on n.num = cte.num and rn = 1