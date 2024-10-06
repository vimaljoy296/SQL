# Songify
Let's think about songs instead of ecommerce for a change! Here's a Spotify playlist, [Top 50 - Global](https://open.spotify.com/playlist/37i9dQZEVXbMDoHDwVN2tF?si=bceb3d1ad17443a5) that we converted into a database. Now, here's the assignment.
1. Understand the files you are working with!
2. Answer questions in `explore.sql` and feel free to add your own questions as well!
3. In the `queries` folder, you will find 15 questions, each in a different SQL file. Answer each of these questions.
4. Before you submit, check for correctness using check50.

### Assignment Files
* `songify.db` is the SQLite3 database for this assignment. Since we are working on queries this week, you will not need to modify the database.
* `explore.sql` is the SQL file where you will "interview the data" by writing exploratory SQL queries. There are a few starting questions, but this part of the assignment is open-ended, so feel free to ask your own questions and answer them.
* `queries` contains 15 questions, each in a numbered SQL file. For each of the questions, write an SQL query to retrieve the required data.

### Reference Files
* `exportified_songs.csv` is a CSV file containing data about songs from the [Top 50 Global](https://open.spotify.com/playlist/37i9dQZEVXbMDoHDwVN2tF?si=8270f719f0484044) playlist on Spotify. The [Exportify](https://exportify.net/) app was used to connect to Spotify and download the playlist as a CSV file.
* `setup.sql` is the file that was used to create the SQLite3 database from `exportified_songs.csv`.

### How To Run
The only files you will modify are `explore.sql` and  the 15 files in `queries`. To run them, use the sqlite3 command in the Terminal. For example:
* `sqlite3 songify.db < explore.sql`
* `sqlite3 songify.db < queries/1.sql`

### How to Test
Check against `exportified_songs.csv` or SQLite Viewer's view of `songify.db` to make sure the query results are what you would logically expect! 
* `explore.sql` is open-ended, so it is only graded for completion.
* The 15 files in `queries` will be run and tested against the expected results to ensure correctness. You can also check these files yourself before submitting the assignment:  
   * Install check50 first!  
    `pip install check50`
   * Now use it to check your queries! (Run this command in your `songify` folder.)   
   `check50 Nithya-ACAD/verify/main/songify --local`

### How to Submit
Submit the **zip file** of your `songify` directory. (Right-click the directory in Explorer and select the "Download..." option.)

## Credits
This assignment was inspired by [Songs](https://cs50.harvard.edu/x/2024/psets/7/songs/), a [CS50](https://www.youtube.com/cs50) problem set.

