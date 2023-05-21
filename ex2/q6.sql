select distinct name
from authors a1
where not exists
    (
        select conference
        from authors
                 natural join conferences
        where name = 'Noam Nisan'
          and area = 'ai'
        except
        select conference
        from authors as a2
        where a1.name = a2.name
    )
order by name;