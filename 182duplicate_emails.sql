SELECT Email FROM Person GROUP BY Email HAVING COUNT(*) > 1
/*
select Email from Person group by Email having count(Email)>1
*/
