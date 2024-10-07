-- Question 13: List the song names where the Added By field is null.
SELECT track_name
FROM spotify_tracks
WHERE Added_by IS NULL;