# Write your MySQL query statement below
SELECT e2.Name as Employee
From Employee e1 JOIN Employee e2 ON e1.Id = e2.ManagerID
WHERE e1.Salary<e2.Salary

/*
SELECT Name AS Employee
    FROM Employee e
    WHERE e.ManagerId IS NOT NULL AND e.Salary > (SELECT Salary
                          FROM Employee
                          WHERE e.ManagerId = Id)
*/
