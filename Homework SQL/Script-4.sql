
----- 4.SQL statement to find the number of users who made their first order in each country, each month-----

select country, month, count(userid) as total_user from (
select DISTINCT tbu.country, min(strftime('%m', tbo.order_time)) as month , tbo.userid
from tb_order tbo
join tb_user tbu on tbu.userid = tbo.userid
group by tbu.country, tbo.userid)
group by month, country