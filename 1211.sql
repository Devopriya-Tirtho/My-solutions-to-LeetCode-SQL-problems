# Write your MySQL query statement below
SELECT query_name, ROUND(AVG(rating/position),2) as quality, COALESCE(ROUND(((SELECT COUNT(rating)
from queries where rating<3 AND query_name=a.query_name group by query_name)/(SELECT COUNT(rating)
from queries 
WHERE query_name=a.query_name group by query_name))*100,2),0) as poor_query_percentage


FROM queries a
WHERE a.query_name IS NOT NULL
GROUP BY a.query_name;
