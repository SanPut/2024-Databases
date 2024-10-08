-- Fetch album and track information for the artist "Iron Maiden".
-- Select Album name, album year, track name, track number and track length to the result.
-- Sort the result primarily by album name and secondarily by track number.
select
  album.name
  , album.year
  , track.name
  , track.track_number
  , track.length
from
  album
  join artist
on album.artist_id = artist.id
join track
on album.id = track.album_id
where
  artist.name = "Iron Maiden"
order by
  album.name
  , track.track_number;