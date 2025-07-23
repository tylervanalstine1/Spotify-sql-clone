-- Users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    country VARCHAR(50),
    signup_date DATE
);

-- Artists
CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    genre VARCHAR(50)
);

-- Albums
CREATE TABLE albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    artist_id INT REFERENCES artists(artist_id),
    release_date DATE
);

-- Songs
CREATE TABLE songs (
    song_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    album_id INT REFERENCES albums(album_id),
    duration_seconds INT,
    genre VARCHAR(50)
);

-- Playlists
CREATE TABLE playlists (
    playlist_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    name VARCHAR(100),
    created_at DATE
);

-- Playlist-Song mapping
CREATE TABLE playlist_songs (
    playlist_id INT REFERENCES playlists(playlist_id),
    song_id INT REFERENCES songs(song_id),
    PRIMARY KEY (playlist_id, song_id)
);

-- Listening History
CREATE TABLE listening_history (
    user_id INT REFERENCES users(user_id),
    song_id INT REFERENCES songs(song_id),
    played_at TIMESTAMP
);
