SELECT a.name, t.title, t.duration,
    AVG(t.duration) OVER (PARTITION BY a.artist_id) AS avg_duration_by_artist
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id;