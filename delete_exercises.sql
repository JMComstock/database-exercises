USE codeup_test_db;

--  Albums released after 1991
SELECT '1991' AS 'ALBUMS AFTER';
DELETE FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT 'DISCO' AS 'GENRE';
DELETE FROM albums WHERE genre = 'disco';

-- Albums by 'Whitney Houston'
SELECT 'WHITNEY HOUSTON' AS 'ALBUMS BY';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;