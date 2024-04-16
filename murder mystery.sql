SELECT *
FROM crime_scene_report
where date = "20180115" AND city = "SQL City"  and type = 'murder'
/*la descripcion del crimen*/

SELECT name, address_street_name, address_number FROM person 
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC

Morty Schapiro  Northwestern Dr 4919
/*el nombre del primer testigo y su direccion*/

SELECT id, name FROM person WHERE name LIKE 'Annabel%'
AND address_street_name = 'Franklin Ave';
/*el apellido de annabel */

SELECT transcript FROM interview WHERE person_id = 16371
/*testimonio de un testigo*/


