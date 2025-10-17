SELECT u.name, lh.play_date,
    COUNT(lh.track_id) OVER (
        PARTITION BY u.user_id
        ORDER BY lh.play_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    )
FROM listening_histories lh
JOIN users u ON lh.user_id = u.user_id;