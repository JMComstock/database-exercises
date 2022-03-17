USE codeup_test_db;

SELECT 'Pink Floyd' AS 'The name of all albums';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'The year was released';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre' AS 'Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released' AS 'in the 1990s';
SELECT name FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Which albums had less than' AS '20 million certified sales';
SELECT name FROM albums WHERE sales < 20.0;

SELECT 'All the albums' AS  'genre of "Rock';
SELECT name FROM albums WHERE genre = "Rock";

--  Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- the query specified only genre of specific origin of Rock, not Hard Rock or Progressive Rock



