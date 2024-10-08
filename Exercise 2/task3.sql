-- Calculate and return the count of albums in the database.
-- Name the count column as album_count.
select
  count(*) as album_count
from
  album;