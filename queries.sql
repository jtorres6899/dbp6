SELECT Projects.ProjectID, employees.LastName, Projects.StartDate
FROM Projects
INNER JOIN Employees ON Projects.EmployeeID=Employees.EmployeeID
WHERE ProjectID<1010
