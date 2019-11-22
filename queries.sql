SELECT Projects.ProjectID, employees.LastName, Projects.StartDate
FROM Projects
INNER JOIN Employees ON Projects.EmployeeID=Employees.EmployeeID
WHERE ProjectID<1010
This query pulls the projects and employee tables together to show us what employees where done at what time period which is shown by the projectID.

SELECT Sales, hiredate, LastName
FROM Employees
WHERE Sales >
 (SELECT AVG(50)
 FROM employees)
ORDER BY HireDate
This query uses the select, where, and order by statments to show how much an employee sells in relation to their hiredate. The minimum amount of sales being 15000 we sae the longer a person was employed the move average sales they had which makes sense. More experience usually leads to better employee. 


SELECT Benefits.EmployeeID, Treasury.Salary, Benefits.VacationTime
FROM Benefits
INNER JOIN Treasury ON Benefits.Salary=Treasury.Salary
WHERE VacationTime>1; 
 
* I originally had WHERE Salary>25000;*

This query pulls the benefits and Treasury tables together and shows us what an employees vacation time is based on salary, which is shown through the EmployeeID.

SELECT Profit, CostToProduce, ProductID
FROM Products 
WHERE Profit >
  (SELECT AVG(50000)
  FROM Products)
ORDER BY CostToProduce

This query shows what profit is made in relation to the CostToProduce. This uses SELECT, WHERE, and ORDER BY statements. The set minimum ammount of profit being 50000, we can see the more significant profits Good Year made.

SELECT departments.DepartmentID, locations.Production, departments.Marketing
FROM departments
INNER JOIN locations ON locations.locationID=departments.DepartmentID
WHERE DepartmentID<0010 

This Query pulls from Departments and location to see what states how production and Marketing relate. 

SELECT DepartmentID, Production, Finance 
FROM Departments
WHERE Finance >
 ( SELECT AVG(1000)
 FROM Departments)
ORDER BY DepartmentID

This Query shoes the average for Finacne is Departments. 

This Query shows the more profitable Departments in the company
SELECT `DepartmentID`, `Profit`, `Sales` FROM `treasury` 
WHERE `Sales` >
(SELECT AVG(6000)
 FROM `treasury`)
ORDER BY `DepartmentID`

This Query shows a comparison of Sales and Profit as well as the salaries for the Departments that work with Customers 104 and above
SELECT `DepartmentID`, `Profit`, `Salary`, `Sales` 
FROM `treasury`
INNER JOIN `customers`
WHERE `CustomerID` > 104
