SELECT * FROM employee

UPDATE employee
SET country = 'INDIA'
WHERE firstname = 'buruj';

SELECT id,firstname,title
FROM employee;


SELECT firstname
FROM employee
WHERE firstname LIKE '%sa%';
 

SELECT 'MD:' + firstname AS modifydfirstname
FROM employee;

SELECT firstname + ' ' + lastname AS fullname
from employee

SELECT TOP 3 * FROM employee;

SELECT TOP 3 id,firstname,title
FROM employee;

SELECT SUM(ID) As totalid
from employee;

SELECT AVG(ID) As totalavgid
from employee;

SELECT MAX(ID) AS max
from employee


SELECT MAX(CAST(country AS varchar)) AS Hcountry
FROM employee;


SELECT COUNT(ID) AS numrow
from employee;


SELECT * FROM salary

SELECT id,name
FROM salary
WHERE remunation BETWEEN 20000 AND 40000
ORDER by id DESC;


SELECT * FROM employee
JOIN salary
ON employee.id = salary.id;

SELECT employee.id, salary.name, salary.remunation
FROM employee
JOIN salary
ON employee.id = salary.id
WHERE salary.remunation BETWEEN 20000 AND 40000
ORDER by id DESC;
