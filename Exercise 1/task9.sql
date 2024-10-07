-- Create a new table called review. The table should have the following columns:
-- - id
-- - name of the reviewer, not null
-- - headline
-- - review text
-- - a reference to the album id which is reviewed, not null
create table review (
  id int primary key auto increment
  , reviewer_name varchar(255) not null
  , headline varchar(255)
  , review_text TEXT
  , album_id int not null
  , foreign key (album_id) references album(id)
);