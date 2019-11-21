SELECT Projects.ProjectID, employees.LastName, Projects.StartDate
FROM Projects
INNER JOIN Employees ON Projects.EmployeeID=Employees.EmployeeID
WHERE ProjectID<1010
This query pulls the projects and employee tables together to show us what employees where done at what time period which is shown by the projectID.

SELECT Sales, hiredate, LastName
FROM Employees
WHERE Sales >
 (SELECT AVG(15000)
 FROM employees)
ORDER BY HireDate
This query uses the selct, where, and order by statments to show how much an employee sells in relatio to their hiredate. The minimum amount of sales being 15000 we sae the longer a person was employed the move average sales they had which makes sense. More experience usually leads to better employee. 
