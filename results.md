SELECT Projects.ProjectID, employees.LastName, Projects.StartDate
FROM Projects
INNER JOIN Employees ON Projects.EmployeeID=Employees.EmployeeID
WHERE ProjectID<1010
This query allows a company to see what employees worked on what project before a certain year. The projectID pertains to the years of completion.

SELECT Sales, hiredate, LastName
FROM Employees
WHERE Sales >
 (SELECT AVG(15000)
 FROM employees)
ORDER BY HireDate
This query would allow a business to compare the relation between time employed and average amount sold. 
