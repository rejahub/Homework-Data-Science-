----- 2.SQL statement to count the number of orders and it’s GMV per country-----

SELECT tu.country, sum(to2.gmv), gmv, COUNT(*) as number_of_order
from tb_order to2 
join tb_user tu on to2.userid = tu.userid
group by tu.country 