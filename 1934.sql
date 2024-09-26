# Write your MySQL query statement below

SELECT s.user_id,ROUND(COALESCE((select count(cn.action)
from signups sn
left join confirmations cn
on sn.user_id=cn.user_id
where s.user_id=sn.user_id
AND cn.action='confirmed'
group by sn.user_id
)/count(c.action),0),2) as confirmation_rate
from signups s
left join confirmations c
on s.user_id=c.user_id
group by s.user_id
