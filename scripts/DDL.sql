
-- Create DATABASE
CREATE DATABASE epicgames;

-- Use Database
USE epicgames;

-- Creating TABLES
CREATE TABLE Games (
	id INT,
	name VARCHAR(60),
	description VARCHAR(60),
	release_date DATE,
	platform VARCHAR(60) CHECK (platform in ('NES','Nintendo 64','Xbox 360','PlayStation 3','PC','Xbox One','PlayStation 4','Nintendo Switch')),
	image BLOB,
	PRIMARY KEY (id) 
);

CREATE TABLE Users (
	id INT,
	username VARCHAR(60) UNIQUE,
	password VARCHAR(60),
	email VARCHAR(60),
	registration_date DATE,
	PRIMARY KEY (id) 
);

CREATE TABLE Scores (
	id INT ,
	user_id INT,
	game_id INT,
	score INT CHECK (score >= 0 AND score <= 100),
	date DATE,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (game_id) REFERENCES Games(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Purchases (
	id INT,
	user_id INT,
	game_id INT,
	purchase_date DATE,
	price DECIMAL(10, 2),
	PRIMARY KEY (id), 
	FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE SET NULL ON UPDATE SET NULL,
	FOREIGN KEY (game_id) REFERENCES Games(id) ON DELETE SET NULL ON UPDATE SET NULL
);

CREATE TABLE Developers (
	id INT,
	name VARCHAR(60),
	description VARCHAR(200),
	foundation_date DATE,
	location VARCHAR(60),
	PRIMARY KEY (id) 
);

CREATE TABLE Studios (
	id INT ,
	name VARCHAR(60),
	description VARCHAR(200),
	foundation_date DATE,
	location VARCHAR(60),
	PRIMARY KEY (id) 
);

CREATE TABLE GamesDevelopers (
	game_id INT,
	developer_id INT,
	PRIMARY KEY (game_id, developer_id),
	FOREIGN KEY (game_id) REFERENCES Games(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (developer_id) REFERENCES Developers(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE GamesStudios (
	game_id INT,
	studio_id INT,
	PRIMARY KEY (game_id, studio_id),
	FOREIGN KEY (game_id) REFERENCES Games(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (studio_id) REFERENCES Studios(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Sales (
	id INT ,
	game_id INT,
	sale_date DATE,
	revenue DECIMAL(10, 2),
	PRIMARY KEY (id),
	FOREIGN KEY (game_id) REFERENCES Games(id) ON DELETE SET NULL ON UPDATE SET NULL
);
