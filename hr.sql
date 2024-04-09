1 mostre el nombre, apellido y sueldo de todos los empleados que ganen menos de 6.000 dólares.
SELECT first_name, last_name, salary from employees
WHERE salary < 6000

2 mostre el nombre, apellido, departamento, ciudad y estado/provincia de cada empleado.
SELECT first_name, last_name, l.state_province, l.city FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id

3 mostre el nombre de todos los empleados junto con el nombre de su jefe, ordenados por el nombre del jefe.
SELECT e.first_name, em.first_name FROM employees e
JOIN employees em ON e.employee_id = em.manager_id
ORDER BY em.first_name DESC

4 mostre el nombre y apellido de los empleados con el nombre de sus hijos (ordenados alfabéticamente).
SELECT e.first_name, e.last_name, d.first_name FROM employees e
JOIN dependents d ON d.employee_id = e.employee_id
ORDER BY d.first_name ASC 

5 mostre el nombre del empleado con su puesto de trabajo y su salario máximo (ordenado por salario de mayor a menor).
SELECT e.first_name, job_title, max_salary FROM employees e
JOIN jobs j ON j.job_id = e.job_id
ORDER BY max_salary DESC

6 
