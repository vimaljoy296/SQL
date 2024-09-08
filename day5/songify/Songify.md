# Songify
## Assignment
Let's think about songs instead of ecommerce for a change! Here's a Spotify playlist, [Top 50 - Global](https://open.spotify.com/playlist/37i9dQZEVXbMDoHDwVN2tF?si=bceb3d1ad17443a5). We converted this playlist into a database, where you can see the songs and their details.  
Now, here's what you need to do.
1. Understand the files you are working with!
2. Answer questions in `explore.sql` and `queries.sql`.
3. Check `queries.sql` to make sure you are getting the correct answers.
4. Download and submit both `explore.sql` and `queries.sql`.

### Assignment Files
* `songify.db` is the SQLite3 database for this assignment. Since we are working on queries this week, you will not need to modify the database.
* `explore.sql` is the SQL file where you will "interview the data" by writing exploratory SQL queries. There are a few starting questions, but this part of the assignment is open-ended, so feel free to ask your own questions and answer them.
* `queries.sql` contains 15 questions. For each, write an SQL query to retrieve the required data.

### Reference Files
* `exportified_songs.csv` is a CSV file containing data about songs from the [Top 50 Global](https://open.spotify.com/playlist/37i9dQZEVXbMDoHDwVN2tF?si=8270f719f0484044) playlist on Spotify. The [Exportify](https://exportify.net/) app was used to connect to Spotify and download the playlist as a CSV file.
* `setup.sql` is the file that was used to create the SQLite3 database from `exportified_songs.csv`.

### Tools
* Install the extension "SQLite Viewer" (extension id: qwtel.sqlite-viewer) to visualise your SQLite3 database and its tables.

### How To Run
The only files you will modify are `explore.sql` and  `queries.sql`. To run them, use the following commands in the Terminal.
* `sqlite3 songify.db < explore.sql`
* `sqlite3 songify.db < queries.sql`

### How to Test
Check against `exportified_songs.csv` or SQLite Viewer's view of `songify.db` to make sure the query results are what you would logically expect!  
* `explore.sql` is open-ended, so it is only graded for completion.
* `queries.sql` will be tested against the expected results to ensure correctness.

## Credits
This assignment was inspired by [Songs](https://cs50.harvard.edu/x/2024/psets/7/songs/), a [CS50](https://www.youtube.com/cs50) problem set.

