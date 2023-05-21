with temp(country, region,countryCount) as (select country, region , sum(count) as countryCount
              from authors natural join institutions
              group by country, region)
select region, country, max(countryCount) as totalCount
from temp t
group by region, country, countryCount
having (countryCount >= all(select max(countryCount) from temp where t.region = temp.region group by region))
order by region, country;



