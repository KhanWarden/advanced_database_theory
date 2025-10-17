SET ROLE listener_nursultan;
SELECT * FROM tracks LIMIT 1;

SET ROLE listener_nursultan;
INSERT INTO ratings(user_id, track_id, rating) VALUES (1, 2, 5);

SET ROLE listener_nursultan;
DELETE FROM ratings WHERE user_id = '1' AND track_id = '2';