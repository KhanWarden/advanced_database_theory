SET ROLE subscripted_listener_batyrkhan;
INSERT INTO playlists(playlist_id, title, user_id) VALUES (999, 'Test', 10);

INSERT INTO Tracks (track_id, title, duration, artist_id, album_id, genre_id)
VALUES (101, 'Test Track', INTERVAL '3 minutes 30 seconds', 1, 1, 1);