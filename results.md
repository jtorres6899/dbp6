Query 1
SELECT Projects.ProjectID, employees.LastName, Projects.StartDate
FROM Projects
INNER JOIN Employees ON Projects.EmployeeID=Employees.EmployeeID
WHERE ProjectID<1010
This query allows a company to see what employees worked on what project before a certain year. The projectID pertains to the years of completion.

Query 2
SELECT Sales, hiredate, LastName
FROM Employees
WHERE Sales >
 (SELECT AVG(15000)
 FROM employees)
ORDER BY HireDate
This query would allow a business to compare the relation between time employed and average amount sold. 

Query 5 
SELECT departments.DepartmentID, locations.Production, departments.Marketing FROM departments INNER JOIN locations ON locations.locationID=departments.DepartmentID WHERE DepartmentID<0010


Query 6 
SELECT DepartmentID, Production, Finance FROM departments WHERE Finance > (SELECT AVG(1000) FROM departments) ORDER BY DepartmentID
