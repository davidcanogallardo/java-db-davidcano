--------------------------------------------- clientes ---------------------------------------------
DELETE FROM client WHERE dni LIKE '66665893W';
--------------------------------------------- asistencia ---------------------------------------------
DELETE FROM presence WHERE id = 9;
--------------------------------------------- PACK ---------------------------------------------
DELETE FROM pack WHERE price = 45;
--------------------------------------------- PROVEEDOR ---------------------------------------------
DELETE FROM provider WHERE (address).zip_code LIKE '17279';
--------------------------------------------- PRODUCTO ---------------------------------------------
DELETE FROM product WHERE name LIKE 'Tori Tori%';
--------------------------------------------- PRODUCTOs de pack ---------------------------------------------
DELETE FROM pack_products WHERE id_pack = 4;