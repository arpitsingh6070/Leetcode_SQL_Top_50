select s.user_id, ifnull(round(ifnull(c.confirmed,0)/ifnull(c.total,0),2),0.00) as confirmation_rate
from signups s
left join( select user_id, count(*) as total,sum(case when action='confirmed' then 1 else 0 end) as confirmed 
from confirmations
group by user_id
) c 
on s.user_id=c.user_id
