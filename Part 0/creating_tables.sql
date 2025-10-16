CREATE TABLE Countries (
    country_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Subscriptions (
    subscription_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    price DECIMAL(6,2) NOT NULL
);

CREATE TABLE "users" (
    user_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    subscription_id VARCHAR(50) REFERENCES Subscriptions(subscription_id),
    country_id VARCHAR(50) REFERENCES Countries(country_id),
    registration_date TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE Artists (
    artist_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    bio TEXT
);

CREATE TABLE Genres (
    genre_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Albums (
    album_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_date DATE,
    artist_id VARCHAR(50) NOT NULL REFERENCES Artists(artist_id)
);

CREATE TABLE Tracks (
    track_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INTERVAL MINUTE TO SECOND NOT NULL,
    artist_id VARCHAR(50) NOT NULL REFERENCES Artists(artist_id),
    album_id VARCHAR(50) REFERENCES Albums(album_id),
    genre_id VARCHAR(50) REFERENCES Genres(genre_id)
);

CREATE TABLE Playlists (
    playlist_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    user_id VARCHAR(50) NOT NULL REFERENCES "users"(user_id)
);

CREATE TABLE Playlist_Track (
    playlist_id VARCHAR(50) NOT NULL,
    track_id VARCHAR(50) NOT NULL,
    position INT,
    PRIMARY KEY (playlist_id, track_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

CREATE TABLE Listening_Histories (
    history_id VARCHAR(50) PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL REFERENCES "users"(user_id),
    track_id VARCHAR(50) NOT NULL REFERENCES Tracks(track_id),
    play_date TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE Ratings (
    user_id VARCHAR(50) NOT NULL,
    track_id VARCHAR(50) NOT NULL,
    rating SMALLINT CHECK (rating BETWEEN 1 AND 5),
    review TEXT,
    PRIMARY KEY (user_id, track_id),
    FOREIGN KEY (user_id) REFERENCES "users"(user_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

CREATE TABLE Recommendations (
    recommendation_id VARCHAR(50) PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL REFERENCES "users"(user_id),
    track_id VARCHAR(50) NOT NULL REFERENCES Tracks(track_id)
);

CREATE TABLE Charts (
    chart_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id VARCHAR(50) REFERENCES Countries(country_id)
);

CREATE TABLE ChartTrack (
    chart_id VARCHAR(50) NOT NULL,
    track_id VARCHAR(50) NOT NULL,
    position INT NOT NULL,
    PRIMARY KEY (chart_id, track_id),
    FOREIGN KEY (chart_id) REFERENCES Charts(chart_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);
