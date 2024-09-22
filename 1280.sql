Select s.student_id,
s.student_name,
sub.subject_name,
COALESCE(COUNT(e.subject_name),0) as attended_exams

from students s
cross join subjects sub
left join examinations e

on s.student_id=e.student_id AND sub.subject_name=e.subject_name

GROUP BY s.student_id, sub.subject_name
ORDER BY student_id,subject_name

