-- 1) Mostrar todos los tipos de crimenes
-- reportados en la ciudad 'SQL City'.
-- Los tipos de crimen deben estar en orden 
-- alfabético y no debe haber repetidos
SELECT DISTINCT type, city FROM crime_scene_report
WHERE city = 'SQL City'
ORDER BY type ASC



-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 
SELECT name, d.car_model, d.car_make, d.plate_number, d.age, d.gender FROM person p
JOIN drivers_license d ON p.license_id = d.id 
WHERE d.age < 40 and d.gender = 'female'
ORDER BY d.age DESC




-- 3) Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now
SELECT p.name,membership_status FROM person p
left join get_fit_now_member g on  p.id = g.person_id
where person_id is null




-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la tercera casa
-- de la calle 'Franklin Ave' (ordenadas por la altura
-- de la calle)
SELECT name, address_number, address_street_name FROM person 
WHERE address_street_name = 'Franklin Ave'
ORDER BY address_number DESC
LIMIT 1 OFFSET 3 





-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir
SELECT min(age), max(age), avg(age), gender FROM drivers_license 
WHERE gender = 'male' 



-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos
SELECT count(car_make) AS marcaDeAuto FROM drivers_license
GROUP BY car_make
HAVING marcaDeAuto > 100
ORDER BY marcaDeAuto DESC


 

-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   





-- 8) Hacer un ranking de los 5 eventos más populares
-- a los que asistieron las personas que ganan 
-- más de 35000 dolares al año.  