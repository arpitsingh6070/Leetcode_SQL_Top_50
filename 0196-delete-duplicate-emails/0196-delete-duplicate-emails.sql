delete from person 
where id not in (select min(id) from (select * from person) as p group by email);