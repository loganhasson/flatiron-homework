CREATE TABLE musicians (
  name TEXT,
  age INTEGER,
  genre TEXT,
  instrument TEXT,
  rating REAL
);


ALTER TABLE musicians ADD COLUMN net_worth INTEGER;
ALTER TABLE musicians ADD COLUMN nationality TEXT;

ALTER TABLE musicians RENAME TO artists;