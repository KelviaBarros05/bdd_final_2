DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_alejandro_juarez` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_alejandro_juarez`()
BEGIN

-- Consultas --

-- Unión --


-- Intersección --


-- Diferencia --


-- Agregación --


-- Reunion natural --


-- Reunion natural por la izquierda --


-- Reunion natural por la derecha --


-- Producto cartesiano --


END //

DELIMITER ;


DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel_rivas` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_miguel_rivas`()
BEGIN

-- Consultas --
-- Interseccion --

-- Union --

-- Diferencia --

-- Agregacion --

-- Reunion Natural --

-- Reunion Natural por derecha --


-- Reunion Natural por izquierda --

-- Producto cartesiano --

END //

DELIMITER ;


DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia_neves` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_kelvia_neves`()
BEGIN

-- Consultas --

-- Unión Kelvia --

SELECT * FROM huesped
WHERE numero_identificacion LIKE 'DNI%'
UNION
SELECT * FROM huesped
WHERE numero_identificacion LIKE 'PAS%';

-- Intersección Kelvia --

SELECT * FROM huesped
WHERE numero_identificacion LIKE 'DNI%'
INTERSECT
SELECT * FROM huesped
WHERE telefono LIKE '+34%';

-- Diferencia Kelvia --

SELECT * FROM huesped
WHERE numero_identificacion NOT LIKE 'DNI%'
EXCEPT
SELECT * FROM huesped
WHERE numero_identificacion LIKE 'DNI%';

-- Agregación Kelvia --

SELECT 
    LEFT(telefono, 3) AS pais, 
    COUNT(*) AS total_huespedes
FROM huesped
GROUP BY pais
ORDER BY total_huespedes DESC;

-- Reunion natural -- 

SELECT h.huesped_id, h.codigo_unico, h.nombre_completo, h.numero_identificacion, h.telefono, h.correo_electronico, r.reserva_huesped_id, r.reserva_id
FROM huesped h
NATURAL JOIN reserva_huesped r;

-- Reunion natural por la izquierda --

SELECT h.huesped_id, h.codigo_unico, h.nombre_completo, h.numero_identificacion, h.telefono, h.correo_electronico, r.reserva_huesped_id, r.reserva_id
FROM huesped h
LEFT JOIN reserva_huesped r
ON h.huesped_id = r.huesped_id;


-- Reunion natural por la derecha --

SELECT h.huesped_id, h.codigo_unico, h.nombre_completo, h.numero_identificacion, h.telefono, h.correo_electronico, r.reserva_huesped_id, r.reserva_id
FROM huesped h
RIGHT JOIN reserva_huesped r
ON h.huesped_id = r.huesped_id;

-- Producto cartesiano --

SELECT h.huesped_id, h.codigo_unico, h.nombre_completo, h.numero_identificacion, h.telefono, h.correo_electronico, r.reserva_huesped_id, r.reserva_id
FROM huesped h
CROSS JOIN reserva_huesped r;

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_manuel_munoz` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_manuel_munoz`()
BEGIN

-- Consultas --

-- Intersect --

-- Union --


-- Diferencia --

-- Agregacion --

-- Natural Join --


-- Right Join --

-- Left Join --

--  P.Cartesiano -- 

END //

DELIMITER ;


DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_carlos_alvarado` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_carlos_alvarado`()
BEGIN

-- Consultas Carlos Alvarado --


-- Intersección --


-- Diferencia --


-- Unión --


-- Agregación --



-- Reunión Natural --


-- Reunión Natural Por la izquierda --


-- Reunión Natural Por la derecha --


-- Producto Cartesiano --



END //

DELIMITER ;
