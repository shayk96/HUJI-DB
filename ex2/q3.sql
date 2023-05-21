select distinct institution, name
from authors natural join conferences natural join institutions
where country = 'il' and adjustedcount >= 2  and (area = 'ai' or subarea = 'db') order by institution, name;