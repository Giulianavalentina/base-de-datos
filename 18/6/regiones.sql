1 - agregar dos regiones:
a - africa
b-  middle east

INSERT INTO regions (region_name)
VALUES ("Africa"), 
       ("Middle east");

///

2 - modificar / pasar los países de la actual region “Middle east and africa” a las nuevas regiones.
UPDATE countries
set region_id = 6
WHERE country_name = 'Israel' or country_name = 'Kuwait'

UPDATE countries
set region_id = 5
WHERE region_id = 4

///

3 - una vez que la región “Middle east and africa” este vacía borrar la región.
DELETE FROM regions
WHERE region_id = 4

/// 

4 - agregar dos países más a cada una de las nuevas regiones.

INSERT INTO countries(country_id, country_name, region_id)
VALUES("AG","Argelia", 5), 
      ("CR","Camerún", 5);

INSERT INTO countries(country_id, country_name, region_id)
VALUES("TQ","Turquia", 6), 
      ("PL","Palestina", 6);

///

5 - volver a crear la región “Middle east and africa”.

INSERT INTO regions (region_name)
VALUES ("Middle east and África");

///

6 - Utilizando IN y subquery pasar los países que se encuentran en la región Africa 
y Middle East (5 y 6) a la nueva región.

UPDATE countries 
SET region_id = 7
WHERE country_name IN (
SELECT country_name FROM countries 
WHERE region_id = 5 or region_id = 6); 

///


