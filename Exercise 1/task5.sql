-- Fetch all the albums which are released between 1990 and 2000 (including both years).
-- Sort the result in descending order by the release year.
select
  name
  , year
from
  album
where
  year between 1990 and 2000
order by
  year desc;