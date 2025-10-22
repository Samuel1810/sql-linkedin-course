-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT tra.TrackId AS id, tra.Name AS musica, art.Name AS artista, alb.Title as album
FROM artists as art
INNER JOIN albums AS alb ON art.ArtistId = alb.ArtistId
INNER JOIN tracks as tra ON alb.AlbumId = tra.AlbumId
WHERE artista LIKE '%Nação%' AND album NOT LIKE 'Da Lama Ao Caos';
