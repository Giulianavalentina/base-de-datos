INSERT INTO artists(name)
VALUES("maluma");

//////

INSERT INTO albums(Title, ArtistId)
VALUES("pretty boy", "276");

//////

INSERT INTO tracks(name, AlbumId, MediaTypeId, Milliseconds, UnitPrice)
VALUES("El perdedor", 348, 5, 268000, 0.99),
("Pretextos", 348, 5, 229000, 0.99),
("Sin contrato", 348, 5, 280000, 0.99)

//////

UPDATE tracks
set GenreId=9
WHERE AlbumId = 348 

//////

UPDATE tracks
set Bytes='Bryan Snaider, Kevin ADG, Juan Luis Londoño, Kevin Mauricio Jimenez, Miky la Sensa'
WHERE TrackId = 3504

//////

UPDATE tracks
set Bytes='Bryan Snaider, Kevin ADG, Jhonatan de la Cruz, Coscuella,  Juan Luis Londoño, Kevin Mauricio Jimenez'
WHERE TrackId = 3505

//////

UPDATE tracks
set Bytes='Andres Castro, Edgar Barrera, Juan Luis Londoño'
WHERE TrackId = 3506

/////

UPDATE tracks
set Bytes=3569430
WHERE TrackId = 3504

/////

UPDATE tracks
set Bytes=4569430
WHERE TrackId = 3505

/////

UPDATE tracks
set Bytes=5569430
WHERE TrackId = 3506

/////

DELETE FROM tracks 
WHERE AlbumId = 348

/////

DELETE FROM albums 
WHERE AlbumId = 348

/////

DELETE FROM artists 
WHERE ArtistId = 276

/////