select name,bonus 
from employee e
left join bonus b
on e.empid=b.empid
where b.bonus < 1000 OR b.bonus IS NULL