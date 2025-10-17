GRANT SELECT ON tracks, artists, albums, genres, countries, subscriptions,
             playlists, playlist_track, listening_histories, recommendations TO non_sub_listeners_r;
GRANT INSERT, UPDATE, DELETE ON ratings TO non_sub_listeners_r;

GRANT SELECT ON tracks, artists, albums, genres, countries, subscriptions, recommendations TO sub_listeners_r;
GRANT SELECT, INSERT, UPDATE, DELETE ON playlists, playlist_track, listening_histories, ratings TO sub_listeners_r;

GRANT SELECT, INSERT, UPDATE, DELETE ON artists, albums, tracks, genres, charts, charttrack TO content_managers_r;
GRANT SELECT ON countries, subscriptions, users, playlists, ratings, recommendations TO content_managers_r;

GRANT SELECT ON artists, charts, charttrack, countries, subscriptions, users, playlists, ratings, recommendations TO artists_r;
GRANT SELECT, INSERT, UPDATE, DELETE ON albums, tracks, genres TO artists_r;
