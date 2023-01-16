-- 1. Fetch all projects with all columns.
SELECT * FROM project;

-- 2. Fetch all department ids and names
SELECT id, depname FROM department;

-- 3. Make a query to find out locations where projects are.
SELECT location FROM project WHERE pid = '';

-- 4. Fetch first and last names, cities and salaries. Name salary column as monthly salary.
Select fname, lname, city, salary from person where city='KUOPIO';

-- 5. Sort previous task by city and last name.
SELECT fname, lname, city, salary FROM person
Order by city, lname;

ALTER TABLE Customers 
RENAME COLUMN first_name TO 'montly salary';

SELECT fname, lname, city, salary FROM person;

-- 6. Fetch all the persons names that has degree ´Yo´.
Select fname, lname from person where degree='Yo';

-- 7. Find out who has salary smaller than 2960. Fetch last name and salary.  Sort results alphabetically. 
-- 8. For previous task, also include those whose salary is 2960. Sort by salary descending.
Select lname As 'Last Name', salary From person
Where salary <= 2960 Order by lname Asc, salary Desc;

-- 9. Fetch those persons that work in department 3 (depcode = 3) and are 
from Turku: name, city and depcode. Sort by last name and first name.
Select * from person where depcode=3, city='Turku' Order by lname, fname;

-- 10. Fetch all person living in Turku and those whose salary is 2800. Socsecno, lastname, firstname, city, salary.
Select lname, fname, city, salary from person
Where salary = 2800;

