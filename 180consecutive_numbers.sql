# Write your MySQL query statement below
SELECT DISTINCT a.Num AS ConsecutiveNums
FROM Logs a, Logs b, Logs c
WHERE (a.Id = b.Id + 1 AND a.Num = b.Num) AND
  (a.Id = c.Id + 2 AND a.Num = c.Num)
/*
SELECT DISTINCT l1.Num  as ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.Id + 1 = l2.Id AND l2.Id + 1 = l3.Id AND l1.Num = l2.Num AND l2.Num = l3.Num
*/
