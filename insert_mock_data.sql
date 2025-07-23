-- Sample users
INSERT INTO users (username, email, country, signup_date)
VALUES
('tyler', 'tyler@email.com', 'USA', '2023-01-01'),
('sarah', 'sarah@email.com', 'Canada', '2023-02-14');

-- Sample artists
INSERT INTO artists (name, genre)
VALUES
('The Rolling Stones', 'Rock'),
('Drake', 'Hip Hop');

-- Albums
INSERT INTO albums (title, artist_id, release_date)
VALUES
('Sticky Fingers', 1, '1971-04-23'),
('Scorpion', 2, '2018-06-29');

-- Songs
INSERT INTO songs (title, album_id, duration_seconds, genre)
VALUES
('Brown Sugar', 1, 215, 'Rock'),
('Nonstop', 2, 225, 'Hip Hop');

-- Playlists
INSERT INTO playlists (user_id, name, created_at)
VALUES
(1, 'My Rock Playlist', '2024-01-01');

-- Playlist Songs
INSERT INTO playlist_songs (playlist_id, song_id)
VALUES
(1, 1);

-- Listening History
INSERT INTO listening_history (user_id, song_id, played_at)
VALUES
(1, 1, NOW()), (2, 2, NOW());
