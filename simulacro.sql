1 - mostre los nombres de todos los departamentos de la empresa en orden alfabético
SELECT department_name from departments
ORDER BY department_name ASC

2 - mostre todos los posibles salarios ordenados de mayor a menor y sin repetir
SELECT DISTINCT salary from employees
ORDER BY salary DESC

3 - mostre los puestos laborales de manager (que incluya la palabra manager) junto con sus salarios minimos y maximos, ordenado de mayor a menor
SELECT min_salary, max_salary, job_title FROM jobs
WHERE job_title like "%manager"
ORDER BY min_salary DESC, max_salary DESC 

4 - mostre los nombres de todos los países con su región correspondiente y ordene los países de una misma región juntos.
SELECT r.region_name, c.country_name FROM regions r
JOIN countries c ON r.region_id = c.region_id
GROUP BY r.region_name

5 - mostre nombre, apellido, departamento y salario de los empleados que cobren entre 9000 y 17000.
SELECT e.first_name, e.last_name, e.salary, department_name FROM departments d
JOIN employees e ON d.department_id = e.department_id 
WHERE salary BETWEEN 9000 and 17000  
ORDER BY salary DESC

6 - mostre la cantidad total de países que hay por región, descartando los que tengan 5 o menos






