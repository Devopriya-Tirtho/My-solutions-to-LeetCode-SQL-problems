# Write your MySQL query statement below
select e1.name
from employee e1
where id IN (select managerID from employee 
group by managerID
having count(managerID)>=5)
