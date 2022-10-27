1. Output all employees salaries are in the database, along with salaries.
SELECT employee_name, monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id;

2. Output all workers whose salary is less than 2000.
SELECT employee_name, monthly_salary
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id 
WHERE monthly_salary < 2000;

3. Output all salary positions, but no employee is assigned to them. (There is a salary, but it is not clear who receives it.)
SELECT employee_name, monthly_salary
FROM employees
RIGHT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE employee_name IS NULL;

4. Output all salary positions less than 2000, but no employee has been assigned to them. (There is a salary, but it is not clear who receives it.)
SELECT employee_name, monthly_salary
FROM employees
RIGHT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE employee_name IS NULL
AND monthly_salary < 2000;

5. Find all employees who have not received a salary.
SELECT employee_name, monthly_salary
FROM employees
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE monthly_salary IS NULL;

6. Output all employees with their job titles.
SELECT employee_name, role_name
FROM roles_employees
FULL JOIN employees
ON roles_employees.employee_id = employees.id
LEFT JOIN roles
ON role_id = roles.id;

7. Output the names and titles of Java developers only.
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Java %';

8. Output the names and titles of only Python developers.
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%PythON %';

9. Output the names and titles of all QA engineers.
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%QA%';

10. Output the names and titles of manual QA engineers.
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Manual QA%';

11. Output names and position of QA automation
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%AutomatiON QA%';

12. Output the names and salaries of junior specialists.
SELECT employee_name, monthly_salary
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id 
WHERE role_name LIKE '%Junior%';

13. Output names and salaries of Middle specialists
SELECT employee_name, monthly_salary
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id 
WHERE role_name LIKE '%Middle%';

14. Output names and salaries of senior specialists
SELECT employee_name, monthly_salary
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id 
WHERE role_name LIKE '%Senior%';

15. Output salaries of Java developers
SELECT monthly_salary, role_name
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Java %';

16. Output salaries of Python developers
SELECT monthly_salary, role_name
FROM employees
JOIN employees_salary
ON employees_salary.employee_id = employees.id
JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Python%';

17. Output the names and salaries of junior Python developers
SELECT employee_name, monthly_salary
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Junior Python%';

18. Output names and salaries of Middle JS developers
SELECT employee_name, monthly_salary
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Middle JavaS%';

19. Output the names and salaries of Senior Java Developers
SELECT employee_name, monthly_salary
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Senior%' 
AND role_name LIKE '%Java %';

20.  Output salaries of Junior QA Engineers
SELECT monthly_salary
FROM employees
JOIN employees_salary
ON employees_salary.employee_id = employees.id
JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Junior%' 
AND role_name LIKE '%QA%';

21. Output the average salary of all junior specialists
SELECT avg(monthly_salary)
FROM employees
JOIN employees_salary
ON employees_salary.employee_id = employees.id
JOIN roles_employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Junior%';

22. Output the amount of salaries of Java developers
SELECT sum(monthly_salary)
FROM employees, employees_salary, roles_employees, roles
WHERE employees_salary.employee_id = employees.id
AND roles_employees.employee_id = employees.id
AND role_id = roles.id
AND role_name LIKE '%JavaS%';

23. Output the minimum salary of QA engineers
SELECT min(monthly_salary)
FROM employees, employees_salary, roles_employees, roles
WHERE employees_salary.employee_id = employees.id
AND roles_employees.employee_id = employees.id
AND role_id = roles.id
AND role_name LIKE '%QA%';

24. Output the maximum salary of QA engineers
SELECT max(monthly_salary)
FROM employees, employees_salary, roles_employees, roles
WHERE employees_salary.employee_id = employees.id
AND roles_employees.employee_id = employees.id
AND role_id = roles.id
AND role_name LIKE '%QA%';

25. Output the number of QA engineers
SELECT count(employee_name)
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%QA%';

26. Output the number of Middle specialists
SELECT count(employee_name)
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Middle%';

27. Output the number of developers
SELECT count(employee_name)
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%developer%';

28. Output the amount of the developers' salaries.
SELECT sum(monthly_salary)
FROM employees
FULL JOIN employees_salary
ON employees_salary.employee_id = employees.id
FULL JOIN roles_employees
ON roles_employees.employee_id = employees.id
FULL JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%developer%';

29. Output names, positions and salaries of all specialists in ascending order
SELECT employee_name, role_name, monthly_salary
FROM employees
LEFT JOIN employees_salary
ON employees_salary.employee_id = employees.id
LEFT JOIN roles_employees
ON roles_employees.employee_id = employees.id
LEFT JOIN roles
ON role_id = roles.id
ORDER BY employee_name;

30. Output the names, positions and salary of all specialists in ascending order from specialists whose salary is from 1700 to 2300
SELECT employee_name, role_name, monthly_salary
FROM employees
LEFT JOIN employees_salary
ON employees_salary.employee_id = employees.id
LEFT JOIN roles_employees
ON roles_employees.employee_id = employees.id
LEFT JOIN roles
ON role_id = roles.id
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY monthly_salary;

31. Output the names, positions and salary of all specialists in ascending order for specialists whose salary is less than 2300
SELECT employee_name, role_name, monthly_salary
FROM employees
LEFT JOIN employees_salary
ON employees_salary.employee_id = employees.id
LEFT JOIN roles_employees
ON roles_employees.employee_id = employees.id
LEFT JOIN roles
ON role_id = roles.id
WHERE monthly_salary < 2300
ORDER BY monthly_salary;

32. Output the names, positions and salary of all specialists in ascending order for specialists whose salary is equal to 1100, 1500, 2000 
SELECT employee_name, role_name, monthly_salary
FROM employees
LEFT JOIN employees_salary
ON employees_salary.employee_id = employees.id
LEFT JOIN roles_employees
ON roles_employees.employee_id = employees.id
LEFT JOIN roles
ON role_id = roles.id
WHERE monthly_salary IN (1100, 1500, 2000)
ORDER BY monthly_salary;
