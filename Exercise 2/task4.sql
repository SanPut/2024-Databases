-- Fetch artist name and their albums. Don't include albums without artist information in the
-- result set.
-- Include artist's name, albums name and release year to the result.
select
  artist.name as artist_name
  , album.name as album_name
  , album.year
from
  artist
  join album
on artist.id = album.artist_id
where
  album.artist_id is not null;