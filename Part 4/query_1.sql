SELECT u.name, t.title,
    LAG(t.title) OVER (
        PARTITION BY lh.user_id
        ORDER BY lh.play_date
    ) AS prev_track
FROM listening_histories lh
JOIN users u ON lh.user_id = u.user_id
JOIN tracks t ON lh.track_id = t.track_id;