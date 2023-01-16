SELECT * FROM project;

SELECT id, depname FROM department;

SELECT location FROM project WHERE pid = '';

Select fname, lname, city, salary from person where city='KUOPIO';

SELECT fname, lname, city, salary FROM person;

ALTER TABLE Customers 
RENAME COLUMN first_name TO 'montly salary';

SELECT fname, lname, city, salary FROM person
Order by city, lname;

Select fname, lname from person where degree='Yo';
Select * from person where depcode=3, city='Turku';

Select lname As 'Last Name', salary From person
Where salary <= 2960 Order by lname Asc, salary Desc;
