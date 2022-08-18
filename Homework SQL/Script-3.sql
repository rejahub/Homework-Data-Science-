----- 3.SQL statement to total unique user doing transaction each month-----

select count (DISTINCT to2.userid) as total_user, strftime('%m', to2.order_time)  as month
from tb_order to2 
group by month