select region, count(distinct institutions) :: float / count(distinct country) as insAvg
from institutions
group by region
order by region;