SELECT a.name, t.title, ROW_NUMBER() OVER (PARTITION BY a.artist_id ORDER BY t.title ASC)
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id;