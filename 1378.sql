# Write your MySQL query statement below
SELECT u.unique_id, e.name
from employees e
left join employeeUNI u
on e.id=u.id;
