select 
    convert(varchar(7), t.trans_date, 126) month, 
    t.country, 
    COUNT(*) trans_count, 
    SUM(case when state = 'approved' then 1 else 0 end) approved_count,
    SUM(amount) trans_total_amount,
    SUM(case when state = 'approved' then amount else 0 end) approved_total_amount
from Transactions t
group by convert(varchar(7), t.trans_date, 126), t.country