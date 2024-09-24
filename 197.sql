# Write your MySQL query statement below
SELECT id
FROM Weather a
WHERE temperature > (SELECT temperature 
from Weather b
Where DATE_SUB(a.recordDate, INTERVAL 1 DAY)=b.recordDate);
