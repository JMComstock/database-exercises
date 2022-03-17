USE codeup_test_db;

-- All albums in your table.
SELECT 'ALL' AS 'ALBUMS';
SELECT * FROM albums;
-- Make all the albums 10 times more popular (sales * 10)
SELECT 'ALL' AS 'ALBUMS 10 TIMES MORE POPULAR';
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

-- All albums released before 1980
SELECT 'ALL' AS 'BEFORE 1980';
SELECT * FROM albums WHERE release_date < 1980;
-- Move all the albums before 1980 back to the 1800s.
SELECT 'ALL' AS 'BEFORE 1980 SET INTO 1800s';
UPDATE albums
SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums;

-- All albums by Michael Jackson
SELECT 'ALL' AS 'MICHAEL JACKSON ALBUMS';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT 'ALL' AS 'MICHAEL CHANGED TO PETER';
UPDATE albums
SET artist='Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;

