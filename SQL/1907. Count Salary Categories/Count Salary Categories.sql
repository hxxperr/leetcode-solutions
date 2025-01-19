with cte as (
    select case 
            when income < 20000 then 1
            when income >= 20000 and income <=50000 then 2
            when income > 50000 then 3
           end as cat_id
from Accounts)
select 'Low Salary' as category, count(*) accounts_count from cte where cat_id = 1
union all
select 'Average Salary' as category, count(*) accounts_count from cte where cat_id = 2
union all
select 'High Salary' as category, count(*) accounts_count from cte where cat_id = 3 