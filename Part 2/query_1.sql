COPY (
    SELECT array_to_json(array_agg(row_to_json(t)))
    FROM (SELECT * FROM tracks) t
) TO '/tmp/tracks.json';