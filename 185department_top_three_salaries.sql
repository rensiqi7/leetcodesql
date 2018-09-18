SELECT
    e.Name as Employee,
    e.Salary as Salary,
    d.Name as Department
FROM
    Employee e,
    Department d
WHERE
    e.DepartmentId = d.Id
AND (SELECT COUNT(DISTINCT e2.Salary) FROM Employee e2 WHERE e2.Salary > e.Salary AND e2.DepartmentId = e.DepartmentId) < 3

/*
SELECT D.Name AS Department, E.Name AS Employee, E.Salary AS Salary
FROM Employee E INNER JOIN Department D ON E.DepartmentId = D.Id
WHERE (SELECT COUNT(DISTINCT(Salary)) FROM Employee
       WHERE DepartmentId = E.DepartmentId AND Salary > E.Salary) < 3
ORDER by E.DepartmentId, E.Salary DESC;
*/
