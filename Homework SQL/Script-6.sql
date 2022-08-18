----- 6.SQL statement to find all star user ordered by the total month he/she become a star user. 
--A star user is the one who have GMV more than $100.0 a month-----

SELECT userid, sum(total_gmv), COUNT(userid) total_star 
from 
(
	select to2.userid, sum(to2.gmv) total_gmv, strftime('%m', to2.order_time) as month
	from tb_order to2
	group by month, to2.userid 
	having sum(to2.gmv) > 100
)
group by userid
order by total_star desc;