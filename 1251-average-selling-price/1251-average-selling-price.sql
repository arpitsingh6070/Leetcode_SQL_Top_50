select product_id, ifnull(round(ifnull(total_revenue,0)/nullif(total_units,0),2),0.00) as average_price
from (
    select p.product_id, sum(u.units) as total_units , sum(u.units*p.price) as total_revenue  
    from prices p 
    left join unitsSold u 
    on  p.product_id=u.product_id 
    and u.purchase_date between p.start_date and p.end_date
    group by p.product_id
) t
