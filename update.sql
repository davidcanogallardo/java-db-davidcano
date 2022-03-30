--------------------------------------------- clientes ---------------------------------------------
UPDATE client SET lastname = 'Uzumaki' WHERE id = 2;
--------------------------------------------- asistencia ---------------------------------------------
UPDATE presence SET date_enter = '2022-10-31 10:10:45' WHERE id = 1 AND date_enter = '2022-10-31 10:40:00';
--------------------------------------------- PACK ---------------------------------------------
UPDATE pack SET price = 105 WHERE id = 1;
--------------------------------------------- PROVEEDOR ---------------------------------------------
UPDATE provider SET lastname = 'Uchiha' WHERE name LIKE 'Hiluluk';
--------------------------------------------- PRODUCTO ---------------------------------------------
UPDATE product SET stock = 9999 WHERE name LIKE 'Smile%';
--------------------------------------------- PRODUCTOs de pack ---------------------------------------------
UPDATE pack_products SET id_pack = 2 WHERE id_pack = 1 AND id_producto = 9;