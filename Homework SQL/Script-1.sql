----- 1.SQL statement to count the number of users per country-----

select count(*), tu.country 
from tb_user tu
group by country 