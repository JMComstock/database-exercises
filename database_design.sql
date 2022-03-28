-- Adlister DB Design

DROP DATABASE IF EXISTS AdlisterClone;

CREATE Database IF NOT EXISTS AdlisterClone;

Use AdlisterClone;

-- Users sign up for the site with an email and password

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR (100) NOT NULL,
    password VARCHAR (50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO users (email, password)
VALUES ('jason@email.com', 'sduRbf3143t'),
       ('loretta@email.com', 'sdhbfF2334'),
       ('sid@email.com','fbshd7FG35'),
       ('jim@email.com', 'hfbG765fs'),
       ('john@email.com','bdTbfb642f');

-- Users create ads with a title and description and category.

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR (50) NOT NULL,
    description VARCHAR (255) NOT NULL,
    category VARCHAR (50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO ads (title, description, category)
VALUES ('Fender Stratocaster', '2019 Fender Stratocaster for sale', 'Selling'),
       ('Fender Telecaster', '2022 Fender Telecaster for sale', 'Selling'),
       ('Laborers Needed', 'Looking for an individual to mow lawns and rake leaves','Hiring'),
       ('Ski-doo', '2021 Ski-doo, used, less than 100 hours', 'Selling'),
       ('House Keeper Wanted', 'Looking for a person to clean my house once a week', 'Hiring'),
       ('Katana Needed', 'I want to buy an authentic Katana from Japan', 'Buying'),
       ('Gym Set', 'I am looking to buy some free-weights', 'Buying');

-- Each ad is associated with the user that created it.

CREATE TABLE created_ad (
    ad_id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO created_ad (ad_id, user_id)
VALUES (1,1),
       (2,1),
       (3,2),
       (4,2),
       (5,3),
       (6,4),
       (7,5);

-- An ad can be in one or more categories (for example, "help wanted", "giveaway", or "furniture")

CREATE TABLE categories (
    category VARCHAR (50) NOT NULL
);

INSERT INTO categories
VALUES ('Selling'),
       ('Buying'),
       ('Hiring');

-- QUERIES

-- For a given ad, what is the email address of the user that created it?

SELECT email
FROM users
WHERE id IN (
    SELECT id
    FROM ads
);

-- For a given ad, what category, or categories, does it belong to?

SELECT category FROM ads
WHERE id IN (
    SELECT category
    FROM categories
);

-- For a given category, show all the ads that are in that category.

SELECT * FROM ads
WHERE category IN (
    SELECT category
    FROM categories
);

-- For a given user, show all the ads they have posted.





