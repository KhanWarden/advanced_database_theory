SELECT a.name, COUNT(t.track_id) OVER (PARTITION BY a.artist_id) AS total_tracks
FROM artists a
JOIN tracks t ON a.artist_id = t.artist_id;