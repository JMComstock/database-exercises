USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT(8,1) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- TODO: Open a terminal, and run the script as codeup_test_user with the following command:
--  mysql -u codeup_test_user -p < albums_migration.sql

-- TODO: USE the codeup_test_db and use DESCRIBE and SHOW CREATE to verify that your albums table has been successfully created.
-- USE codeup_test_db;
-- Database changed
-- mysql> DESCRIBE albums;
-- +--------------+--------------+------+-----+---------+----------------+
-- | Field        | Type         | Null | Key | Default | Extra          |
-- +--------------+--------------+------+-----+---------+----------------+
-- | id           | int unsigned | NO   | PRI | NULL    | auto_increment |
-- | artist       | varchar(50)  | NO   |     | NULL    |                |
-- | name         | varchar(50)  | NO   |     | NULL    |                |
-- | release_date | date         | NO   |     | NULL    |                |
-- | sales        | float(8,1)   | NO   |     | NULL    |                |
-- | genre        | varchar(50)  | NO   |     | NULL    |                |
-- +--------------+--------------+------+-----+---------+----------------+
-- 6 rows in set (0.03 sec)

-- SHOW CREATE TABLE albums \G;
--*************************** 1. row ***************************
--Table: albums
--Create Table: CREATE TABLE `albums` (
--`id` int unsigned NOT NULL AUTO_INCREMENT,
--`artist` varchar(50) NOT NULL,
--`name` varchar(50) NOT NULL,
--`release_date` date NOT NULL,
--`sales` float(8,1) NOT NULL,
--`genre` varchar(50) NOT NULL,
--PRIMARY KEY (`id`)
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
--1 row in set (0.01 sec)