with cte as
(
    select distinct sell_date, product
    from Activities
)
select sell_date,
count(product) as num_sold,
string_agg(product, ',') WITHIN GROUP (ORDER BY product) as products
from cte
group by sell_date
order by sell_date