SELECT * FROM Genre;

SELECT * FROM Artist;

SELECT * FROM Album;

SELECT * FROM Song;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

SELECT 
    ArtistId,
    GenreId
FROM Album
WHERE GenreId = 1;

SELECT 
    ArtistId,
    GenreId
FROM Album
WHERE GenreId = 2 OR GenreId = 4;

SELECT a.Title,
       s.Title
FROM Album a
LEFT JOIN Song s on a.Id = s.AlbumId
WHERE s.Title IS NULL;

INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Megadeath', 1983);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Rust In Peace', 10/21/1990, 2444, 'Capitol', 28, 5);

UPDATE Album
SET ReleaseDate = '10/21/1990'
WHERE ArtistId = 28

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Holy Wars... The Punishment Due', 392, '10/23/1990', 5, 28, 23);

SELECT
    a.ArtistName,
    b.Title,
    c.Title
FROM Artist a LEFT JOIN Album b ON b.ArtistId = a.Id
LEFT JOIN Song c ON c.ArtistId = a.Id
WHERE a.Id = 28

SELECT
    a.Title,
    COUNT(s.Id) as TotalSongs
FROM Album a LEFT JOIN Song s on s.AlbumId = a.Id
GROUP BY a.Title

SELECT
    a.ArtistName,
    COUNT(s.Id) as TotalSongs
FROM Artist a LEFT JOIN Song s on s.ArtistId = a.Id
GROUP BY a.ArtistName

SELECT
    g.Name,
    COUNT(s.Id) as TotalSongs
FROM Genre g LEFT JOIN Song s on s.GenreId = g.Id
GROUP BY g.Name

