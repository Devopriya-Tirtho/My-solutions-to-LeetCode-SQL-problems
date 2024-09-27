# Write your MySQL query statement below
SELECT p.project_id, ROUND(AVG(e.experience_years),2) as average_years
from project p
left join
employee e
on p.employee_id=e.employee_id
GROUP BY p.project_id;
