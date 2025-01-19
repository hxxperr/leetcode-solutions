select p.product_name, SUM(unit) unit
from Products p join Orders o on p.product_id = o.product_id
where datepart(month,o.order_date)=2 and datepart(year,o.order_date)=2020
group by p.product_name
having SUM(unit) >= 100