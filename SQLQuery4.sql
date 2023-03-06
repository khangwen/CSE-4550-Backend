CREATE PROCEDURE GetAllUserData @PersonID nvarchar(30)
AS
SELECT * FROM Accounts WHERE PersonID = @PersonID
GO

CREATE PROCEDURE GetAllSongData @SongID nvarchar(255)
AS
SELECT * FROM Songs WHERE SongID = @SongID
GO

CREATE PROCEDURE GetAllArtistData @ArtistID nvarchar(255)
AS
SELECT * FROM Artists WHERE ArtistID = @ArtistID
GO

CREATE PROCEDURE GetAllPlaylistData @PlaylistID nvarchar(255)
AS
SELECT * FROM Playlists WHERE PlaylistID = @PlaylistID
GO

CREATE PROCEDURE GetAllAlbumData @AlbumID nvarchar(255)
AS
SELECT * FROM Albums WHERE AlbumID = @AlbumID
GO

DROP PROCEDURE GetAllUserData, GetAllArtistData, GetAllSongData, GetAllAlbumData, GetAllPlaylistData;

EXEC GetAllUserData @PersonID = 10000001;
EXEC GetAllSongData @SongID = 10000001;
EXEC GetAllArtistData @ArtistID = 10000001;
EXEC GetAllPlaylistData @PlaylistID = 10000001;
EXEC GetAllAlbumData @AlbumID = 10000001;