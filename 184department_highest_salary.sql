# Write your MySQL query statement below
SELECT
    Department.name AS 'Department',
    Employee.name AS 'Employee',
    Salary
FROM
    Employee
        JOIN
    Department ON Employee.DepartmentId = Department.Id
WHERE
    (Employee.DepartmentId , Salary) IN
    (   SELECT
            DepartmentId, MAX(Salary)
        FROM
            Employee
        GROUP BY DepartmentId
    )
;

/*
SELECT Department.Name AS Department, Employee.Name AS Employee, Employee.Salary AS Salary
FROM Department JOIN Employee ON Employee.DepartmentId = Department.Id
WHERE Employee.Salary IN (SELECT MAX(e.Salary) FROM Employee e WHERE e.DepartmentId = Employee.DepartmentId)
*/
