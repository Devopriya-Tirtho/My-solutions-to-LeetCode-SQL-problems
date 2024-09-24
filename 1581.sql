# Write your MySQL query statement below
select v.customer_id, COUNT(v.visit_id) as count_no_trans
from visits v
left join transactions t
on v.visit_id=t.visit_id
where transaction_id IS NULL
group by v.customer_id;
