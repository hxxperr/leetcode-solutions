select e.employee_id, e.name, COUNT(*) reports_count, ROUND(SUM(e1.age) * 1.0 /COUNT(*), 0) average_age
from Employees e join Employees e1 on e.employee_id = e1.reports_to
group by e.employee_id, e.name
order by e.employee_id