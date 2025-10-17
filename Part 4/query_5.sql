SELECT a.name, t.title, t.duration,
    NTH_VALUE(t.title, 3) OVER (
        PARTITION BY a.artist_id
        ORDER BY t.duration
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
FROM tracks t
JOIN artists a ON t.artist_id = a.artist_id;