# Collaborative Crossword
We’ve put together a **crossword puzzle** for you, but in the process, we lost the list of clues! Fortunately, the clues are still in a **database** of past crossword puzzles, and we have some **hints** that should help you track them down.

Your task is to:
1. **Pick Hints:** The hints are in a box at the front of the class, and each person will pick up some of the hints.
2. **Write Queries:** For each hint, write an SQL query to retrieve the correct clue from the database.
3. **Solve Clue:** Solve the clues retrieved from the database and add your answer words to the giant collaborative crossword!

### Assignment Files:
* `crossword_clues.db`: The SQLite3 database containing clues from past crosswords.
* `queries` folder: This folder contains the files where you will write SQL queries to retrieve your clues.
* `crossword_image.png`: A picture of the crossword puzzle for reference.

### How To Run:
To execute your queries, use sqlite3 commands in the terminal. For example, to run the query for 1 Across:
* `sqlite3 crossword.db < queries/across1.sql`

### How to Test:
Use this link to test your queries for correctness:
* `check50 Nithya-ACAD/verify/main/crossword`

### How to Submit:
* Submit the link to the Collaborative Crossword folder.
* Download and submit the `queries` folder.

### Credits
The database was created using the [New York Times Crossword Clues & Answers 1993-2021](https://www.kaggle.com/datasets/darinhawley/new-york-times-crossword-clues-answers-19932021/data) Kaggle dataset, which is in the public domain under a Creative Commons license.