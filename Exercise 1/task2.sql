-- Retrieve names and lengths of all tracks. Sort the result rows in
-- ascending order by the length column.
select
  name
  , length
from
  track
order by
  length asc;