-- Top played songs
SELECT s.title, COUNT(*) as play_count
FROM listening_history lh
JOIN songs s ON lh.song_id = s.song_id
GROUP BY s.title
ORDER BY play_count DESC
LIMIT 5;

-- Most active users
SELECT u.username, COUNT(*) as plays
FROM listening_history lh
JOIN users u ON lh.user_id = u.user_id
GROUP BY u.username
ORDER BY plays DESC;

-- Playlist total durations
SELECT p.name, SUM(s.duration_seconds) AS total_duration
FROM playlists p
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
GROUP BY p.name;
