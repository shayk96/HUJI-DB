with recursive result(name_1, conference_1, year_1, i) as (
    select name, conference, year, 0
    from authors
    where name = 'Noam Nisan'

    union

    select name, conference, year, i + 1
                    from result r inner join authors a2 on(name_1 != a2.name)
                    where (i < 2) and exists (
                        select *
                        from authors a
                        where(a2.conference = a.conference and a2.year = a.year and name_1 = a.name))

)
select distinct name_1 as name
from result
order by name;


