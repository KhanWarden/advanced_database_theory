SELECT a.name, t.title, t.duration, NTILE(4) OVER (ORDER BY t.duration)
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id;