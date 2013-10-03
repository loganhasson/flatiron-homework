/* first create a copy of the table missing one column (number_of_recordings) */

CREATE TABLE musicians_2(
	name TEXT,
	age INTEGER,
	rating REAL,
	genre TEXT,
	instrument TEXT,
	nationality TEXT,
	phone_number INTEGER,
	address TEXT,
	label TEXT
);

/* then drop original table */

DROP TABLE musicians;

/* finally, rename new table back to "musicians" */

ALTER TABLE musicians_2 RENAME TO musicians;