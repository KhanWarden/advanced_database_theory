COPY (
    SELECT g.name, COUNT(*) as total_tracks
    FROM tracks t
    JOIN genres g ON t.genre_id = g.genre_id
    GROUP BY g.name
    ORDER BY total_tracks DESC;
) TO '/tmp/genres_tracks.csv'
DELIMITER ','
CSV
HEADER;