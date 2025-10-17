COPY (
    SELECT t.title, t.duration, a.name, a.bio FROM tracks t
    JOIN artists a ON t.artist_id = a.artist_id
    WHERE a.name = 'Queen'
) TO '/tmp/queen_tracks.csv'
DELIMITER ','
CSV
HEADER;