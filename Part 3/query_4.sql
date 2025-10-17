SELECT u.name, t.title, lh.play_date,
    LAG(t.title) OVER (PARTITION BY u.user_id ORDER BY lh.play_date) AS previous_track
FROM listening_histories lh
JOIN users u ON lh.user_id = u.user_id
JOIN tracks t ON lh.track_id = t.track_id;