CREATE TABLE Accounts (
	PersonID int NOT NULL IDENTITY(10000001,1) PRIMARY KEY,
	FirstName varchar(255),
	LastName varchar(255),
	Username varchar(255) CHECK (len(Username) > 3  AND len (Username) < 50),
	Email varchar(255) CHECK (len(Email) > 3  AND len (Email) < 50),
	Address varchar(255), 
	Age int CHECK (Age<=130)
);

CREATE TABLE Artists (
	ArtistID int NOT NULL IDENTITY(10000001,1) PRIMARY KEY,
	ArtistName varchar(255) NOT NULL,
	Subscribers int NOT NULL DEFAULT 0,
	Likes int NOT NULL DEFAULT 0,
	ViewCount int NOT NULL DEFAULT 0,
	TextLink varchar(255) 
);

CREATE TABLE Songs (
	SongID int NOT NULL IDENTITY(10000001,1) PRIMARY KEY,
	SongName varchar(255) NOT NULL,
	Likes int NOT NULL DEFAULT 0,
	ViewCount int NOT NULL DEFAULT 0,
	TextLink varchar(255), 
	ArtistID int FOREIGN KEY REFERENCES Artists(ArtistID)
);

CREATE TABLE Albums (
	AlbumID int NOT NULL IDENTITY(10000001,1) PRIMARY KEY,
	AlbumName varchar(255) NOT NULL,
	Likes int NOT NULL DEFAULT 0,
	ViewCount int NOT NULL DEFAULT 0,
	TextLink varchar(255), 
	ArtistID int FOREIGN KEY REFERENCES Artists(ArtistID)
);

--multiple playlist tables? make a function? perhaps make it so that the single table has multiple playlists
CREATE TABLE Playlists (
	PlaylistID int NOT NULL,
	PersonID int FOREIGN KEY REFERENCES Accounts(PersonID),
	SongID int FOREIGN KEY REFERENCES Songs(SongID)
);

CREATE TABLE SongQueues (
	QueueID int NOT NULL IDENTITY(10000001,1) PRIMARY KEY,
	SongID int NOT NULL
);

--make primarykey of both songid and personid? or constraint
CREATE TABLE Ratings (
	SongID int FOREIGN KEY REFERENCES Songs(SongID),
	PersonID int FOREIGN KEY REFERENCES Accounts(PersonID),
	Liked bit 
);

INSERT INTO Accounts (FirstName)
VALUES ('Alan');

INSERT INTO Accounts (FirstName)
VALUES ('Arturo');

INSERT INTO Accounts (FirstName)
VALUES ('Alfredo');

INSERT INTO Accounts (FirstName)
VALUES ('Elijah');

INSERT INTO Accounts (FirstName)
VALUES ('Michael');

INSERT INTO Accounts (FirstName)
VALUES ('Nicole');

INSERT INTO Accounts (FirstName)
VALUES ('Tristan');

INSERT INTO Artists (ArtistName)
VALUES ('Tunit')

INSERT INTO Songs (ArtistID, SongName)
VALUES (10000001, 'Tunit')

INSERT INTO Songs (ArtistID, SongName)
VALUES (10000001, 'Tunit2')

INSERT INTO Songs (ArtistID, SongName)
VALUES (10000001, 'In the End')

INSERT INTO Songs (ArtistID, SongName)
VALUES (10000001, 'Phoenix')

INSERT INTO Albums (AlbumName)
VALUES ('TunitAlbum')

INSERT INTO Playlists (PlaylistID, SongID, PersonID)
VALUES (10000001, 10000001, 10000001)

INSERT INTO Playlists (PlaylistID, SongID, PersonID)
VALUES (10000001, 10000002, 10000001)

SELECT * FROM Accounts;
SELECT * FROM Songs;
SELECT * FROM Artists;
SELECT * FROM SongQueues;
SELECT * FROM Albums;
SELECT * FROM Ratings;
SELECT * FROM Playlists;

DROP TABLE Songs, Albums, Artists, SongQueues, Ratings, Playlists, Accounts;