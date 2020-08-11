-- create a table

CREATE TABLE celebs (
    id INTEGER, 
    name TEXT, 
    age INTEGER
); 

-- add 4 celebs to the table

INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22); 

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 

INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 

INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

-- select all data from the celebs table

SELECT * FROM celebs;

-- select all names from the celebs table

SELECT name FROM celebs;

-- add a new column to the table

ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

-- update the table to include Taylor Swift's twitter handle

UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

-- delete all of the rows that have a NULL value in the twitter handle column

DELETE FROM celebs 
WHERE twitter_handle IS NULL;

-- create a new table with constraints on the values

CREATE TABLE awards (
    id INTEGER PRIMARY KEY,
    recipient TEXT NOT NULL,
    award_name TEXT DEFAULT 'Grammy'
);