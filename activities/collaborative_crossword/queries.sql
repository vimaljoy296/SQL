-- SELECT word, clue
-- FROM crossword_clues
-- WHERE clue LIKE '%clicked%'
-- GROUP BY clue
-- HAVING count(*) = 2;

SELECT *
FROM crossword_clues
WHERE word_length = 6
ORDER BY clue
LIMIT 1;