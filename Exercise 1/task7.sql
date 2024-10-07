-- Fetch all the tracks which length is less than one minute or more than five minutes.
-- Sort the result in ascending order by the length.
select
  name
  , length
from
  track
where
  length < 100
  or length > 500
order by
  length asc;