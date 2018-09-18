CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  set N=N-1;
  RETURN (
      # Write your MySQL query statement below.
      select
      (select distinct salary
      from employee
      order by salary desc
      limit 1 offset N)
      as getNthHighestSalary
  );
END

/*
     SELECT MAX(Salary)
            FROM Employee Emp1
            WHERE (N-1) = (
                 SELECT COUNT(DISTINCT(Emp2.Salary))
                        FROM Employee Emp2
                        WHERE Emp2.Salary > Emp1.Salary)
*/
