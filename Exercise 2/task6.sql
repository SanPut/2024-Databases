-- Calculate and return the count of albums each band has in the database.
-- Include Artist name and album count into the result.
-- Name the result columns as "Artist" and "Album count".
select
  artist.name as "Artist"
  , count(album.id) as "Album count"
from
  artist
  join album
on artist.i d = album.artist_id
group by
  artist.name;