----- 5.SQL statement to find the first order GMV of each user. If there is a tie, use the order with the lower orderid-----

SELECT to2.orderid  as orderId, MIN(STRFTIME('%m', to2.order_time)) as month, to2.orderid, to2.gmv  
from tb_order to2 
group by userid 
order by gmv, orderid  ASC 

select min(orderid), userid ,gmv 
from
	(
	select tbo.orderid as orderId, min(strftime('%m', tbo.order_time)) as month,  tbo.userid, tbo.gmv
	from tb_order tbo
	group by tbo.userid
	)
group by gmv