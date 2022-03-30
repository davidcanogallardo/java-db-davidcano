-- parte 1
--------------------------------------------- clientes ---------------------------------------------
\echo "********************************************SELECT ejercicio 1********************************************"
-- Clientes de Tarragona
\echo Clientes de Tarragona
SELECT name,lastname,email,phone FROM client WHERE (address).province LIKE 'Tarragona';
--------------------------------------------- asistencia ---------------------------------------------
-- Fichajes del usuario con ID 1
\echo Fichajes del usuario con ID 1
SELECT date_enter, date_leave FROM presence WHERE id = 1 ORDER BY date_enter;
--------------------------------------------- PACK ---------------------------------------------
-- Packs con descuento 0
\echo Packs con descuento 0
SELECT name, price, stock FROM pack WHERE discount = 0;
--------------------------------------------- provider ---------------------------------------------
-- Todos los proveedores
\echo Todos los proveedores
SELECT name,lastname,email,phone FROM provider;
--------------------------------------------- product ---------------------------------------------
-- Productos que su catálogo que aún no ha empezado
\echo Productos que su catálogo que aún no ha empezado
SELECT name,price,stock, date_start, date_end FROM product WHERE date_start > CURRENT_DATE;
--------------------------------------------- PRODUCTOs de pack ---------------------------------------------
-- Tabla de productos de pack pero sustituyendo el ID por el nombre del pack/producto
\echo Tabla de productos de pack pero sustituyendo el ID por el nombre del pack/producto
SELECT prod.name,prod.price,prod.stock FROM product AS prod, pack_products AS pr_pack WHERE prod.id = pr_pack.id_producto AND pr_pack.id_pack = 5;

-- parte 2
\echo "********************************************SELECT ejercicio 2 (JOINS)********************************************"
-- Tabla de productos de pack pero sustituyendo el ID por el nombre del pack/producto
\echo Tabla de productos de pack pero sustituyendo el ID por el nombre del pack/producto
SELECT pack.name, product.name 
FROM pack_products 
INNER JOIN product 
ON pack_products.id_producto = product.id 
INNER JOIN pack 
ON pack_products.id_pack = pack.id
ORDER BY pack.name;

--------------------------------
\echo "********************************************SELECT ejercicio 3 (subconsultas)********************************************"
-- SELECT name
-- FROM provider INNER JOIN client ON true;

-- parte 3
-- Productos que estén en el pack con ID 1
\echo Productos que estén en el pack con ID 1
SELECT * FROM product WHERE id IN (SELECT id_producto FROM pack_products WHERE id_pack =1);
-- Packs que tengan el producto con ID 1
\echo Packs que tengan el producto con ID 1
SELECT * FROM pack WHERE id IN (SELECT id_pack FROM pack_products WHERE id_producto = 1);
-- Productos que estén en un pack que tiene 0 descuento
\echo Productos que estén en un pack que tiene 0 descuento
SELECT * FROM product WHERE id IN (SELECT id_producto FROM pack_products WHERE id_pack IN (SELECT id FROM pack WHERE discount = 0));