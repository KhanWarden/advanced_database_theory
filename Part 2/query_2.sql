COPY (
    SELECT array_to_json(array_agg(row_to_json(a)))
    FROM (SELECT * FROM artists) a
) TO '/tmp/artists.json';