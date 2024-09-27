# Write your MySQL query statement below
SELECT r.contest_id, ROUND(((COUNT(r.user_id)/(SELECT COUNT(user_id) FROM users))*100),2) as percentage
FROM
register r
left join users u
on r.user_id=u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
