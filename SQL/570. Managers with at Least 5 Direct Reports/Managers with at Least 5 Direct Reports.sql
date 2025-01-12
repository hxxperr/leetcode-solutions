select name
from Employee e join (select managerId, COUNT(*) amount from Employee group by managerId) e1 on e.id = e1.managerId
where e1.amount >= 5