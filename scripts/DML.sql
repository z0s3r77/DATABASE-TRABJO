-- Games table

INSERT INTO Games (id, name, description, release_date, platform)
VALUES (1, 'Super Mario Bros.', 'A classic platformer game', '1985-09-13', 'NES');

INSERT INTO Games (id, name, description, release_date, platform)
VALUES (2, 'The Legend of Zelda: Ocarina of Time', 'A popular adventure game', '1998-11-23', 'Nintendo 64');

INSERT INTO Games (id, name, description, release_date, platform)
VALUES (3, 'Grand Theft Auto V', 'An open-world action game', '2013-09-17', 'PlayStation 3');

INSERT INTO Games (id, name, description, release_date, platform)
VALUES (4, 'Minecraft', 'A sandbox survival game', '2011-11-18', 'PC');

INSERT INTO Games (id, name, description, release_date, platform)
VALUES (5, 'Fortnite', 'A popular battle royale game', '2017-07-25', 'PlayStation 4');


-- Users table

INSERT INTO Users (id, username, password, email, registration_date)
VALUES (1, 'johndoe', 'password123', 'johndoe@example.com', '2022-01-01');

INSERT INTO Users (id, username, password, email, registration_date)
VALUES (2, 'janedoe', 'letmein', 'janedoe@example.com', '2022-02-15');

INSERT INTO Users (id, username, password, email, registration_date)
VALUES (3, 'bobsmith', 'pa$$w0rd', 'bobsmith@example.com', '2022-03-10');

INSERT INTO Users (id, username, password, email, registration_date)
VALUES (4, 'sarahjones', 'password', 'sarahjones@example.com', '2022-04-05');

INSERT INTO Users (id, username, password, email, registration_date)
VALUES (5, 'davidsmith', 'david123', 'davidsmith@example.com', '2022-05-20');


-- Scores table

INSERT INTO Scores (id, user_id, game_id, score, date)
VALUES (1, 1, 1, 100, '2022-03-01');

INSERT INTO Scores (id, user_id, game_id, score, date)
VALUES (2, 1, 2, 50, '2022-03-15');

INSERT INTO Scores (id, user_id, game_id, score, date)
VALUES (3, 2, 1, 25, '2022-04-02');

INSERT INTO Scores (id, user_id, game_id, score, date)
VALUES (4, 3, 3, 75, '2022-05-01');

INSERT INTO Scores (id, user_id, game_id, score, date)
VALUES (5, 4, 4, 0, '2022-05-15');


-- Sales table

INSERT INTO Purchases (id, user_id, game_id, purchase_date, price)
VALUES (1,1, 2, '2022-01-20', 49.99);
INSERT INTO Purchases (id, user_id, game_id, purchase_date, price)
VALUES (2,2, 3, '2022-02-25', 29.99);
INSERT INTO Purchases (id, user_id, game_id, purchase_date, price)
VALUES (3,3, 1, '2022-03-15', 59.99);
INSERT INTO Purchases (id, user_id, game_id, purchase_date, price)
VALUES (4,4, 2, '2022-04-10', 49.99);
INSERT INTO Purchases (id, user_id, game_id, purchase_date, price)
VALUES (5,5, 3, '2022-05-05', 29.99);


-- Developers table

INSERT INTO Developers (id, name, description, foundation_date, location)
VALUES 
(1, 'Rockstar North', 'A Scottish video game developer and a studio of Rockstar Games', '1988-01-01', 'Edinburgh, Scotland'),
(2, 'Naughty Dog', 'An American video game developer that creates games exclusively for PlayStation consoles', '1984-01-01', 'Santa Monica, California'),
(3, 'Valve Corporation', 'An American video game developer, publisher, and digital distribution company', '1996-01-01', 'Bellevue, Washington'),
(4, 'CD Projekt Red', 'A Polish video game developer, publisher, and distributor', '1994-01-01', 'Warsaw, Poland'),
(5, 'Ubisoft Montreal', 'A Canadian video game developer and a subsidiary of Ubisoft', '1997-01-01', 'Montreal, Canada');


-- Studios table

INSERT INTO Studios (id, name, description, foundation_date, location)
VALUES 
(1, 'Blizzard Entertainment', 'An American video game developer and publisher', '1991-02-08', 'Irvine, California'),
(2, 'Nintendo EPD', 'A Japanese video game developer and a division of Nintendo', '2015-09-16', 'Kyoto, Japan'),
(3, 'Square Enix', 'A Japanese video game developer, publisher, and distribution company', '1975-09-22', 'Tokyo, Japan'),
(4, 'Electronic Arts', 'An American video game company that develops and publishes games', '1982-05-28', 'Redwood City, California'),
(5, 'Capcom', 'A Japanese video game developer and publisher', '1979-06-11', 'Osaka, Japan');


-- GamesDevelopers table

INSERT INTO GamesDevelopers (game_id, developer_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- GamesStudios table

INSERT INTO GamesStudios (game_id, studio_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Sales table

INSERT INTO Sales (id, game_id, sale_date, revenue)
VALUES 
(1, 1, '2022-01-01', 500000),
(2, 2, '2022-02-01', 750000),
(3, 3, '2022-03-01', 1000000),
(4, 4, '2022-04-01', 1250000),
(5, 5, '2022-05-01', 1500000);
