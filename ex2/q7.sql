select distinct a3.year as year, a3.name as name
from authors a3
where (a3.year >= 2000 and a3.year <= 2020) and a3.conference = 'focs' and a3.institution = 'Hebrew University of Jerusalem'
except
select a1.year, a1.name
from authors a1 ,authors a2
where a1.count < a2.count and (a1.year = a2.year and a1.year >= 2000 and a1.year <= 2020) and a1.conference = a2.conference and
  a1.conference = 'focs' and a1.institution = a2.institution and a1.institution = 'Hebrew University of Jerusalem' order by year, name;