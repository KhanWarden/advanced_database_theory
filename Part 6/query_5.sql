SET ROLE artist_queen;
INSERT INTO albums(album_id, title, release_date, artist_id)
VALUES (999, 'Bohemian Rhapsody Movie Soundtrack', '2018-10-19', 1);

SET ROLE artist_queen;
INSERT INTO tracks(track_id, title, duration, artist_id, album_id, genre_id)
VALUES (999, 'Don''t Stop Me Now (Revisited)', INTERVAL '3 minutes 29 seconds', 1, 999, 1);

SET ROLE artist_queen;
INSERT INTO ChartTrack (chart_id, track_id, position)
VALUES (1, 999, 5);