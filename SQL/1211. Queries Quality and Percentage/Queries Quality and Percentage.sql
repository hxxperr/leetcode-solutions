select 
    q.query_name, 
    ROUND(AVG(rating * 1.0 / position), 2) AS quality, 
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as poor_query_percentage
from Queries q
WHERE q.query_name is not null
group by q.query_name