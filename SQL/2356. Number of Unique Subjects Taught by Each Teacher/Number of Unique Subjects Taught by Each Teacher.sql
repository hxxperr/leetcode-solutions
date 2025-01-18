select teacher_id, COUNT(distinct subject_id) cnt
from Teacher
group by teacher_id