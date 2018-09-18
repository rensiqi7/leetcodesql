# Write your MySQL query statement below
SELECT
  Score,
  (SELECT count(*) FROM (SELECT distinct Score s FROM Scores) tmp WHERE s >= Score) Rank
FROM Scores
ORDER BY Score desc

/*
SELECT Score,  (SELECT COUNT(DISTINCT(Score)) FROM  Scores b WHERE b.Score > a.Score) + 1 AS Rank
      FROM Scores a
      ORDER by Score DESC
*/
