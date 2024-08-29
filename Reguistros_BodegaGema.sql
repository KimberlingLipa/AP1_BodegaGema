USE BodegaGemma;


-------------------------------------------------
--------------- M A E S T R O S -----------------
-------------------------------------------------

-- Tabla: person (CLIENTE)
INSERT INTO person (rol_person, type_document, number_document, names, last_name, email, cell_phone, birthdate)
VALUES 
('C', 'DNI', '76684851', 'Juan', 'Perez', 'juan@example.com', '938476253', '1990-01-01'),
('C', 'CNE', '87362533128394673843', 'Maria', 'Lopez', 'maria@example.com', '987654321', '1985-05-15'),
('C', 'DNI', '87362538', 'Pedro', 'Gomez', 'pedro@example.com', '982735183', '1993-10-20'),
('C', 'DNI', '98765432', 'Ana', 'Martinez', 'ana@example.com', '987654321', '1988-12-05'),
('C', 'DNI', '24681357', 'Luis', 'Rodriguez', 'luis@example.com', '982736481', '1995-03-25'),
('C', 'CNE', '76352413772833662831', 'Angel', 'Castilla', 'angel@example.com', '936609401', '2005-05-08'),
('C', 'DNI', '72638491', 'Diego', 'Ramos', 'diego@example.com', '982637481', '2001-09-19'),
('C', 'DNI', '72936123', 'Alex', 'Sanchez', 'alex@example.com', '982738412', '2003-06-28'),
('C', 'DNI', '65273941', 'Erick', 'Martinez', 'erick@example.com', '982738333', '1988-12-12'),
('C', 'DNI', '82730138', 'Luis', 'Tasayco', 'luis@example.com', '988273112', '2000-11-20');

-- Listar completo tabla person
SELECT * FROM person;

-- Listar clientes con todos los campos
SELECT * FROM person
WHERE rol_person = 'C' AND active = 'A';

-- Listar clientes
SELECT id, type_document, number_document, names, last_name, cell_phone, email, birthdate
FROM person
WHERE rol_person = 'C' AND active = 'A';


-- Tabla: person (SELLER)
INSERT INTO person (rol_person, type_document, number_document, names, last_name, salary, cell_phone, email, seller_rol, seller_user, seller_password)
VALUES 
('V', 'DNI', '37281936', 'Carlos', 'Gomez', 2000.00, '923456789', 'carlos@example.com', 'Empleado', 'carlo', 'cazador'),
('V', 'DNI', '52736153', 'Laura', 'Fernandez', 1800.00, '987654321', 'laura@example.com', 'Empleado', 'lfernandez', 'suerte'),
('V', 'DNI', '76352182', 'Marcos', 'Ruiz', 2200.00, '935792468', 'marcos@example.com', 'Empleado', 'flung', 'por100pre'),
('V', 'DNI', '73772813', 'Sofia', 'Garcia', 1900.00, '946813579', 'sofia@example.com', 'Empleado', 'sgarcia', 'hastalavista'),
('V', 'DNI', '53281233', 'Elena', 'Sanchez', 2100.00, '985792468', 'elena@example.com', 'Empleado', 'elenas', 'turuleka'),
('V', 'DNI', '63722834', 'Javier', 'López', 1950.00, '912233445', 'javier@example.com', 'Empleado', 'javierl', 'noimporta'),
('V', 'DNI', '73884991', 'Ana', 'Martínez', 2050.00, '954433221', 'ana@example.com', 'Empleado', 'amartinez', 'noselodigas'),
('V', 'DNI', '82739441', 'Pablo', 'González', 1300.00, '967788990', 'pablo@example.com', 'Empleado', 'pablogo', 'contraseñasegura'),
('V', 'DNI', '62339912', 'Lucía', 'Hernández', 1280.00, '988776655', 'lucia@example.com', 'Empleado', 'luciah', 'perdiste:v'),
('V', 'DNI', '82933312', 'Diego', 'Díaz', 1150.00, '912299887', 'diego@example.com', 'Empleado', 'diegor', 'caviar');




-- INSERTAR ADMINISTRADORES
INSERT INTO person (rol_person, type_document, number_document, names, last_name, salary, cell_phone, email, seller_rol, seller_user, seller_password)
VALUES 
('V', 'DNI', '98273654', 'admin', 'Portuguez', 3000.00, '967788990', 'admin@example.com', 'Administrador', 'admin', 'admin123'),
('V', 'DNI', '98273843', 'Kimberly', 'Lipa', 2980.00, '988776655', 'kimberly@example.com', 'Administrador', 'kimberlyly', 'kimberly123'),
('V', 'DNI', '88993364', 'Erick', 'Portuguez', 2550.00, '912299887', 'erick@example.com', 'Administrador', 'erickpz', 'erick123');

-- Listar completo tabla person
SELECT * FROM person;

-- Listar clientes con todos los campos
SELECT * FROM person 
WHERE rol_person = 'V' AND active = 'A';

-- Listar clientes
SELECT id, type_document, number_document, names, last_name, cell_phone, email, salary, seller_user, seller_password
FROM person 
WHERE rol_person = 'V' AND active = 'A';


-- Tabla: supplier
INSERT INTO supplier (ruc, name_company, type_document, number_document, names, last_name, email, cell_phone)
VALUES 
('25367283912', 'San Fernando', 'DNI', '12345678', 'Jose', 'Perez', 'jose@example.com', '982739213'),
('25367489573', 'Coca-Cola', 'DNI', '87654321', 'Maria', 'Lopez', 'maria@example.com', '982733221'),
('18293748392', 'Pepsi', 'DNI', '98765432', 'Pedro', 'Gomez', 'pedro@example.com', '992831732'),
('67389843842', 'Dijisa SAC', 'CNE', '45678901', 'Ana', 'Martinez', 'ana@example.com', '998822371'),
('91837462121', 'Arinita SAC', 'DNI', '65432109', 'Luis', 'Rodriguez', 'luis@example.com', '928336733'),
('22337729371', 'Nestle', 'CNE', '23456789', 'Laura', 'Garcia', 'laura@example.com', '918228832'),
('91822773982', 'San Jose SAC', 'DNI', '87659321', 'Carlos', 'Sanchez', 'carlos@example.com', '991128331'),
('12938173512', 'Distribuidora SAC', 'DNI', '76543210', 'Elena', 'Fernandez', 'fernandez@example.com', '967788990'),
('29384477382', 'Almacen Rodriguez', 'CNE', '34567890', 'Juan', 'Lopez', 'lopez@example.com', '998877665'),
('1273821038', 'Mayorista García', 'DNI', '54321098', 'Sofia', 'Gomez', 'sofia@example.com', '922288772');

SELECT * FROM supplier;

-- Tabla: category_product
INSERT INTO category_product (name, description)
VALUES 
('Abarrotes Secos', 'Productos no perecederos como arroz, frijoles, pasta, etc.'),
('Conservas', 'Alimentos enlatados como salsas, vegetales, frutas, etc.'),
('Bebidas', 'Refrescos, jugos, aguas, bebidas energéticas, etc.'),
('Panadería', 'Productos de panadería como pan, bollos, galletas, etc.'),
('Lácteos', 'Productos lácteos como leche, queso, yogurt, etc.'),
('Carnes y Embutidos', 'Carnes frescas y embutidos como salchichas, jamón, etc.'),
('Dulces y Snacks', 'Golosinas, chocolates, papas fritas, etc.'),
('Condimentos y Salsas', 'Especias, aderezos, salsas, etc.'),
('Artículos de Limpieza', 'Productos para la limpieza del hogar como detergentes, jabones, etc.'),
('Cuidado Personal', 'Productos de cuidado personal como champú, jabón de baño, etc.');

SELECT * FROM category_product;


-- Tabla: product
INSERT INTO product (code, name, description, category_product_id, price_unit, unit_sale, date_expiry, stock)
VALUES 
('P001', 'Arroz Campo', 'Arroz de alta calidad', 1, 4.00, 'Kilo', CONVERT(DATE, '2025-12-31', 120), 200),
('P002', 'Frijol Bravo', 'Frijol natural y fresco', 1, 3.50, 'Kilo', CONVERT(DATE, '2025-12-31', 120), 150),
('P003', 'Azúcar Cristal', 'Azúcar refinada de alta pureza', 1, 4.50, 'Kilo', CONVERT(DATE, '2025-12-31', 120), 100),
('P004', 'Aceite Omega', 'Aceite vegetal puro', 1, 7.00, 'Unidad', CONVERT(DATE, '2025-12-31', 120), 80),
('P005', 'Sal Marina', 'Sal marina de grano fino', 1, 1.40, 'Unidad', CONVERT(DATE, '2025-12-31', 120), 120),
('P006', 'Atún A1', 'Atún enlatado de alta calidad', 2, 3.50, 'Unidad', CONVERT(DATE, '2025-12-31', 120), 100),
('P007', 'Leche Gloria', 'Leche evaporada enriquecida', 5, 2.80, 'Unidad', CONVERT(DATE, '2026-11-25', 120), 120),
('P008', 'Sopa instantánea', 'Sopa rápida de preparar', 2, 1.80, 'Unidad', CONVERT(DATE, '2025-10-21', 120), 150),
('P009', 'Jabón NEKKO', 'Jabón antibacterial', 9, 5.00, 'Unidad', CONVERT(DATE, '2025-08-11', 120), 100),
('P010', 'Bebida Energética Volt', 'Bebida energética revitalizante', 3, 2.50, 'Unidad', CONVERT(DATE, '2024-12-31', 120), 120);

SELECT * FROM product;

-- Tabla: payment_method
INSERT INTO payment_method (name, description)
VALUES 
('Efectivo', 'Pago en efectivo al momento de la compra.'),
('Tarjeta de crédito', 'Pago con tarjeta de crédito.'),
('Transferencia bancaria', 'Pago mediante transferencia bancaria.'),
('Yape', 'Pago a través de la aplicación Yape.'),
('Depósito bancario', 'Pago mediante depósito en cuenta bancaria.');

SELECT * FROM payment_method;



-- Trigger para actualizar el stock después de una compra
CREATE OR ALTER TRIGGER trg_update_stock_after_purchase
ON purchase_detail
AFTER INSERT, UPDATE
AS
BEGIN
    -- Actualizar el stock después de una inserción
    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        UPDATE product
        SET stock = stock + i.amount
        FROM product p
        INNER JOIN inserted i ON p.id = i.product_id;
    END

    -- Actualizar el stock después de una actualización
    IF EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE product
        SET stock = stock - (d.amount - i.amount)
        FROM product p
        INNER JOIN inserted i ON p.id = i.product_id
        INNER JOIN deleted d ON p.id = d.product_id;
    END
END
GO

-- Trigger para actualizar el stock después de una venta
CREATE OR ALTER TRIGGER trg_update_stock_after_sale
ON sale_detail
AFTER INSERT, UPDATE
AS
BEGIN
    -- Actualizar el stock después de una inserción
    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        UPDATE product
        SET stock = stock - i.amount
        FROM product p
        INNER JOIN inserted i ON p.id = i.product_id;
    END

    -- Actualizar el stock después de una actualización
    IF EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE product
        SET stock = stock + (d.amount - i.amount)
        FROM product p
        INNER JOIN inserted i ON p.id = i.product_id
        INNER JOIN deleted d ON p.id = d.product_id;
    END
END
GO

-- Trigger para desactivar un producto si su stock se actualiza a cero
CREATE OR ALTER TRIGGER desactivar_producto_al_actualizar_stock
ON product
AFTER UPDATE
AS
BEGIN
    -- Verificar si el nuevo stock del producto es igual a cero
    IF EXISTS (SELECT * FROM inserted WHERE stock = 0)
    BEGIN
        UPDATE product
        SET active = 'I'
        FROM inserted i
        WHERE product.id = i.id AND i.stock = 0;
    END
END
GO

-- Trigger para desactivar un producto si se vende y no hay stock
CREATE OR ALTER TRIGGER desactivar_producto_sin_stock
ON sale_detail
AFTER INSERT
AS
BEGIN
    -- Desactivar producto si no hay stock
    IF EXISTS (SELECT * FROM inserted WHERE amount > 0)
    BEGIN
        UPDATE product
        SET active = 'I'
        WHERE id IN (SELECT product_id FROM inserted WHERE amount > 0 AND stock = 0);
    END
END
GO

-- Trigger para activar un producto si se compra y tiene stock
CREATE OR ALTER TRIGGER activar_producto_con_stock
ON purchase_detail
AFTER INSERT
AS
BEGIN
    -- Activar producto si su stock cambió a más de cero
    IF EXISTS (SELECT * FROM inserted WHERE amount > 0)
    BEGIN
        UPDATE product
        SET active = 'A'
        WHERE id IN (SELECT product_id FROM inserted WHERE amount > 0 AND stock > 0 AND active = 'I');
    END
END
GO

-- Trigger AFTER INSERT y AFTER UPDATE para calcular subtotal_purchase
CREATE OR ALTER TRIGGER trg_calculate_subtotal_purchase
ON purchase_detail
AFTER INSERT, UPDATE
AS
BEGIN
    -- Calcular el subtotal de la compra
    UPDATE pd
    SET pd.subtotal_purchase = i.amount * p.price_unit
    FROM purchase_detail pd
    INNER JOIN inserted i ON pd.id = i.id
    INNER JOIN product p ON i.product_id = p.id;
END
GO

-- Trigger AFTER INSERT y AFTER UPDATE para actualizar total_purchase en la tabla purchase
CREATE OR ALTER TRIGGER update_total_purchase
ON purchase_detail
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @purchase_id_list TABLE (purchase_id INT);

    -- Insertar purchase_ids afectados
    INSERT INTO @purchase_id_list (purchase_id)
    SELECT DISTINCT purchase_id FROM inserted
    UNION
    SELECT DISTINCT purchase_id FROM deleted;

    -- Actualizar total_purchase para cada purchase_id
    UPDATE p
    SET p.total_purchase = (
        SELECT COALESCE(SUM(pd.subtotal_purchase), 0)
        FROM purchase_detail pd
        WHERE pd.purchase_id = p.id
    )
    FROM purchase p
    INNER JOIN @purchase_id_list pil ON p.id = pil.purchase_id;
END
GO

-- Trigger BEFORE INSERT para calcular subtotal_sale
CREATE OR ALTER TRIGGER calc_subtotal_sale
ON sale_detail
AFTER INSERT, UPDATE
AS
BEGIN
    -- Calcular el subtotal de la venta
    UPDATE sale_detail
    SET subtotal_sale = i.amount * p.price_unit
    FROM sale_detail sd
    INNER JOIN inserted i ON sd.id = i.id
    INNER JOIN product p ON i.product_id = p.id;
END
GO

-- Trigger AFTER INSERT y AFTER UPDATE para actualizar total_sale en la tabla sale
CREATE OR ALTER TRIGGER update_total_sale
ON sale_detail
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @sale_id_list TABLE (sale_id INT);

    -- Insertar sale_ids afectados
    INSERT INTO @sale_id_list (sale_id)
    SELECT DISTINCT sale_id FROM inserted
    UNION
    SELECT DISTINCT sale_id FROM deleted;

    -- Actualizar total_sale para cada sale_id
    UPDATE s
    SET s.total_sale = (
        SELECT COALESCE(SUM(sd.subtotal_sale), 0)
        FROM sale_detail sd
        WHERE sd.sale_id = s.id
    )
    FROM sale s
    INNER JOIN @sale_id_list sil ON s.id = sil.sale_id;
END
GO

-- Trigger BEFORE UPDATE para actualizar la fecha y hora en la tabla sale
CREATE OR ALTER TRIGGER update_sale_date
ON sale
AFTER UPDATE
AS
BEGIN
    UPDATE sale
    SET date_time = GETDATE()
    FROM sale s
    INNER JOIN inserted i ON s.id = i.id;
END
GO

-- Trigger BEFORE UPDATE para actualizar la fecha y hora en la tabla purchase
CREATE OR ALTER TRIGGER update_purchase_date
ON purchase
AFTER UPDATE
AS
BEGIN
    UPDATE purchase
    SET date_time = GETDATE()
    FROM purchase p
    INNER JOIN inserted i ON p.id = i.id;
END
GO

--aqui es xd 


-- Comenzar una transacción
BEGIN TRANSACTION;

-- Insertar en la tabla: purchase
INSERT INTO purchase (supplier_id, seller_id, payment_method_id)
VALUES (2, 11, 1);
INSERT INTO purchase (supplier_id, seller_id, payment_method_id)
VALUES (3, 16, 1);
INSERT INTO purchase (supplier_id, seller_id, payment_method_id)
VALUES (8, 12, 4);
INSERT INTO purchase (supplier_id, seller_id, payment_method_id)
VALUES (7, 14, 4);
INSERT INTO purchase (supplier_id, seller_id, payment_method_id)
VALUES (1, 11, 4);

-- Confirmar inserciones en la tabla purchase
SELECT * FROM purchase;

-- Insertar en la tabla: purchase_detail
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (1, 6, 5.00, 10);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (1, 7, 4.00, 10);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (1, 2, 5.00, 10);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (3, 8, 4.00, 20);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (3, 9, 6.50, 50);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (5, 5, 2.00, 20);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (5, 6, 5.00, 50);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (2, 10, 3.50, 100);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (4, 4, 9.00, 50);
INSERT INTO purchase_detail (purchase_id, product_id, price_unit, amount)
VALUES (4, 5, 2.00, 10);

-- Confirmar inserciones en la tabla purchase_detail
SELECT * FROM purchase;
SELECT * FROM purchase_detail;
SELECT * FROM product;

-- Insertar en la tabla: sale
INSERT INTO sale (client_id, seller_id, payment_method_id)
VALUES (1, 13, 4);
INSERT INTO sale (client_id, seller_id, payment_method_id)
VALUES (2, 11, 4);
INSERT INTO sale (client_id, seller_id, payment_method_id)
VALUES (4, 11, 1);
INSERT INTO sale (client_id, seller_id, payment_method_id)
VALUES (5, 12, 1);
INSERT INTO sale (client_id, seller_id, payment_method_id)
VALUES (3, 15, 4);

-- Confirmar inserciones en la tabla sale
SELECT * FROM sale;

-- Insertar en la tabla: sale_detail
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (1, 10, 5);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (1, 8, 10);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (3, 1, 5);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (3, 3, 3);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (5, 1, 3);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (2, 6, 5);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (2, 7, 5);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (2, 9, 10);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (4, 4, 5);
INSERT INTO sale_detail (sale_id, product_id, amount)
VALUES (4, 5, 2);

-- Confirmar inserciones en la tabla sale_detail
SELECT * FROM sale;
SELECT * FROM sale_detail;
SELECT * FROM product;

-- Confirmar la transacción
COMMIT TRANSACTION;

