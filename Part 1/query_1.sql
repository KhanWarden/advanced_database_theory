SELECT a.name, COUNT(t.title)
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id
WHERE a.name = 'Queen'
GROUP BY a.name;