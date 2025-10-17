SELECT a.name, t.title, t.duration,
    RANK() OVER (
        PARTITION BY a.artist_id
         ORDER BY t.duration DESC
    )
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id;