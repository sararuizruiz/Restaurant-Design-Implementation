-- 1. Ver qué sucursales ofrecen hamburguesa de buey
SELECT s.id sucursal_id, s.nombre sucursal_nombre
FROM sucursal s JOIN ofrece o ON (s.id = o.sucursal_id) JOIN producto p ON (o.producto_id = p.id)
WHERE p.nombre = 'Hamburguesa de buey';



-- 2. Contar cuantas bebidas alcohólicas ofrece la sucursal 11
SELECT COUNT(*) cantidad_bebidas_alcoholicas
FROM ofrece o JOIN bebida_alcohólica b ON (o.producto_id = b.bebida_producto_id)
WHERE o.sucursal_id = 11;



-- 3. Ver cual es el nombre restaurante al que pertenece la sucursal con puntuación más baja, junto con el id de la sucursal correspondiente
SELECT r.nombre nombre_restaurante, s.id id_sucursal, c.puntuacion
FROM clienteanonimo c JOIN sucursal s ON (c.sucursal_id = s.id) JOIN restaurante r ON (s.restaurante_id = r.id)
WHERE c.puntuacion = (SELECT MIN(puntuacion) FROM clienteanonimo);



-- 4. Contar cuántos productos con glúten ofrece cada sucursasl
SELECT s.id  sucursal_id, COUNT(p.id) cantidad_productos_con_gluten
FROM sucursal s JOIN ofrece o ON (s.id = o.sucursal_id) JOIN producto p ON (o.producto_id = p.id) JOIN alergenos a ON (p.id = a.comida_producto_id)
WHERE a.alergeno = 'Gluten'
GROUP BY s.id;



-- 5. Ver qué productos ofrece la sucursal 10 que no ofrece la sucursal 11
SELECT p.nombre
FROM ofrece o JOIN producto p ON (o.producto_id = p.id)
WHERE o.sucursal_id = 10 AND o.producto_id NOT IN (SELECT o1.producto_id FROM ofrece o1 WHERE o1.sucursal_id = 11);



-- 6. Ver el nombre de los empleados que trabajan en más de una sucursal
SELECT nombre
FROM empleado
WHERE dni IN (SELECT empleado_dni FROM trabajaen GROUP BY empleado_dni HAVING COUNT(DISTINCT sucursal_id) > 1);



-- 7. Ver el dni y nombre del gerente de la sucursal con más ganancias, junto con las ganancias de su sucursal
SELECT g.empleado_dni, e.nombre, r.ganancias
FROM gerente g JOIN resultadosfinanceiros r ON (g.sucursal_id = r.sucursal_id) JOIN empleado e ON (g.empleado_dni = e.dni)
WHERE r.ganancias = (SELECT MAX(ganancias) FROM resultadosfinanceiros);



-- 8. Contar en el número de productos que aparece cada ingrediente de la sucursal 20, ordenados de menor a mayor número de veces que aparecen,
-- y a igualdad de veces, según id del ingrediente
SELECT i.id ingrediente_id, COUNT(n.ingrediente_id) cantidad_utilizada
FROM necesitade n JOIN producto p ON (n.producto_id = p.id) JOIN ofrece o ON (p.id = o.producto_id) 
JOIN sucursal s ON (o.sucursal_id = s.id) JOIN ingrediente i ON (n.ingrediente_id = i.id)
WHERE s.id = 20
GROUP BY i.id
ORDER BY 2,1;



-- 9. Ver cual es el producto más caro de cada sucursal
SELECT p.nombre, p.precio, s.id sucurcal_id
FROM producto p JOIN ofrece o ON (p.id = o.producto_id) JOIN sucursal s ON (o.sucursal_id = s.id)
WHERE p.precio = (SELECT MAX(precio) FROM producto p2 JOIN ofrece o2 ON p2.id = o2.producto_id WHERE o2.sucursal_id = s.id);



-- 10. Ver quien es el supervisor de cada camarero, junto con la sucursal en la que trabajan
SELECT t.sucursal_id, e.nombre nombre_empleado, nvl(s.nombre, ' ') nombre_supervisor
FROM empleado e LEFT JOIN empleado s ON (e.empleado_dni = s.dni) JOIN trabajaen t ON (e.dni = t.empleado_dni)
WHERE e.cargo = 'Camarero';

