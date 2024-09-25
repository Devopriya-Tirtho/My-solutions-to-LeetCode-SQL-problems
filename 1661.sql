# Write your MySQL query statement below
SELECT machine_id, ROUND((SUM(sub1.timediff)/process_count),3) as processing_time
from

(SELECT a.machine_id, a.process_id, (a.timestamp-b.timestamp) as timediff, 
    (select count(process_id) 
    from activity c
    where (a.machine_id=c.machine_id AND a.activity_type=c.activity_type)
    group by a.machine_id
    ) as process_count

from activity a
left join activity b
on a.machine_id=b.machine_id AND a.process_id=b.process_id AND a.activity_type<>b.activity_type
where a.activity_type='end') sub1
GROUP BY machine_id
