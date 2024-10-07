-- Retrieve name and length for tracks which length is less than one and half minutes.
-- Sort the result primarily in ascending order by the name and secondarily
-- in descending order by the length.
select
  name
  , length
from
  track
where
  length < 130
order by
  name asc
  , length desc;