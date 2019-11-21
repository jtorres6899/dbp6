SELECT Projects.ProjectID, employees.LastName, Projects.StartDate
FROM Projects
INNER JOIN Employees ON Projects.EmployeeID=Employees.EmployeeID
WHERE ProjectID<1010

SELECT Sales, hiredate, LastName
FROM Employees
WHERE Sales >
 (SELECT AVG(15000)
 FROM employees)
ORDER BY HireDate
