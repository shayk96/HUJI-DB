select distinct name, year
from authors natural join conferences
where subarea = 'ml' and institution = 'Hebrew University of Jerusalem'
intersect
select name, year
from authors natural join conferences
where subarea = 'vision' and institution = 'Hebrew University of Jerusalem' order by name, year;
