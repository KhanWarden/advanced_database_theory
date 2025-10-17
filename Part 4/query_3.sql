SELECT a.name, t.title, t.duration,
    FIRST_VALUE(t.title) OVER (PARTITION BY a.artist_id ORDER BY t.duration)
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id;