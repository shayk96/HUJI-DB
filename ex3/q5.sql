with oldCon(conference) as (select distinct conference
                                  from authors natural join conferences
                                  group by conference
                                  having count(distinct year) >= 10)
select distinct name
from oldCon inner join authors on (oldCon.conference = authors.conference)
order by name;
