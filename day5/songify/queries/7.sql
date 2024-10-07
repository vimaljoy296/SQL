-- Question 7: Which were the songs released in April? Provide the track, artist names and release date.
SELECT track_name, artist_names, release_date
FROM spotify_tracks
WHERE strftime('%m', release_date) = '04';