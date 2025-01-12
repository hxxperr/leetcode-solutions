select 
    p.project_id,
    ROUND(SUM(e.experience_years) * 1.00 / COUNT(p.project_id), 2) average_years
from Project p left join Employee e on p.employee_id = e.employee_id
group by p.project_id