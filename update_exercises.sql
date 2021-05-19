USE codeup_test_db;

-- All albums in your table.
SELECT *
FROM albums;

UPDATE albums;

-- All albums released before 1980
SELECT *
FROM albums
WHERE release_date < 1990;

UPDATE albums;

-- All albums by Michael Jackson
SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums;