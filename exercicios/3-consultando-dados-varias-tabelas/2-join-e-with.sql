-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
WITH musica AS (
SELECT tra.TrackId AS id, tra.Name AS musica, alb.Title AS album, art.Name as artista
FROM tracks AS tra 
INNER JOIN albums AS alb ON alb.AlbumId = tra.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId)


-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
SELECT artista, COUNT(musica) AS qtd_total_musica
FROM musica
WHERE artista LIKE 'Caetano%';