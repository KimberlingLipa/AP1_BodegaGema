-- Cambiar el contexto a la base de datos BodegaGemma
USE BodegaGemma;
GO

-- Crear las tablas

-- 01 Tabla: person (persona)
CREATE TABLE person (
    id INT IDENTITY(1,1) PRIMARY KEY,
    rol_person CHAR(1),
    type_document CHAR(3),
    number_document VARCHAR(20) UNIQUE,
    names VARCHAR(60),
    last_name VARCHAR(90),
    cell_phone CHAR(9),
    email VARCHAR(80),
    birthdate DATE,
    salary DECIMAL(8,2),
    seller_rol VARCHAR(20),
    seller_user VARCHAR(100),
    seller_password VARCHAR(130),
    active CHAR(1) DEFAULT 'A',
    CONSTRAINT type_document_ck CHECK (type_document IN ('DNI', 'CNE')),
    CONSTRAINT email_ck CHECK (email LIKE '%@%.%')
);
GO

-- 02 Tabla: supplier (proveedor)
CREATE TABLE supplier (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ruc CHAR(11),
    name_company VARCHAR(90),
    type_document CHAR(3),
    number_document VARCHAR(20) UNIQUE,
    names VARCHAR(60),
    last_name VARCHAR(80),
    email VARCHAR(90),
    cell_phone CHAR(9),
    active CHAR(1) DEFAULT 'A',
    CONSTRAINT type_document_supplier_ck CHECK (type_document IN ('DNI', 'CNE')),
    CONSTRAINT email_supplier_ck CHECK (email LIKE '%@%.%')
);
GO

-- 03 Tabla: category_product (categoría producto)
CREATE TABLE category_product (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(60),
    description VARCHAR(90),
    active CHAR(1) DEFAULT 'A'
);
GO

-- 04 Tabla: product (producto)
CREATE TABLE product (
    id INT IDENTITY(1,1) PRIMARY KEY,
    code CHAR(4) UNIQUE,
    name VARCHAR(60),
    description VARCHAR(200),
    category_product_id INT,
    price_unit DECIMAL(8,2),
    unit_sale VARCHAR(10),
    date_expiry DATE,
    stock DECIMAL(8,2),
    active CHAR(1) DEFAULT 'A',
    CONSTRAINT unit_sale_options CHECK (unit_sale IN ('Unidad', 'Kilo')),
    FOREIGN KEY (category_product_id) REFERENCES category_product(id)
);
GO

-- 05 Tabla: payment_method (método de pago)
CREATE TABLE payment_method (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(90),
    description VARCHAR(100),
    active CHAR(1) DEFAULT 'A'
);
GO

-- 06 Tabla: purchase (compra)
CREATE TABLE purchase (
    id INT IDENTITY(1,1) PRIMARY KEY,
    supplier_id INT,
    seller_id INT,
    payment_method_id INT,
    total_purchase DECIMAL(8,2),
    date_time DATETIME DEFAULT GETDATE(),
    active CHAR(1) DEFAULT 'A',
    FOREIGN KEY (supplier_id) REFERENCES supplier(id),
    FOREIGN KEY (seller_id) REFERENCES person(id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_method(id)
);
GO

-- 07 Tabla: purchase_detail (detalle de compra)
CREATE TABLE purchase_detail (
    id INT IDENTITY(1,1) PRIMARY KEY,
    purchase_id INT,
    product_id INT,
    price_unit DECIMAL(8,2),
    amount DECIMAL(8,2),
    subtotal_purchase DECIMAL(8,2),
    FOREIGN KEY (purchase_id) REFERENCES purchase(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
GO

-- 08 Tabla: sale (venta)
CREATE TABLE sale (
    id INT IDENTITY(1,1) PRIMARY KEY,
    seller_id INT,
    client_id INT,
    payment_method_id INT,
    total_sale DECIMAL(8,2),
    date_time DATETIME DEFAULT GETDATE(),
    active CHAR(1) DEFAULT 'A',
    FOREIGN KEY (seller_id) REFERENCES person(id),
    FOREIGN KEY (client_id) REFERENCES person(id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_method(id)
);
GO

-- 09 Tabla: sale_detail (detalle de venta)
CREATE TABLE sale_detail (
    id INT IDENTITY(1,1) PRIMARY KEY,
    sale_id INT,
    product_id INT,
    amount DECIMAL(8,2),
    subtotal_sale DECIMAL(8,2),
    FOREIGN KEY (sale_id) REFERENCES sale(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
GO

-- Crear índices para mejorar el rendimiento de las consultas
CREATE INDEX idx_product_category_product_id ON product (category_product_id);
CREATE INDEX idx_purchase_supplier_id ON purchase (supplier_id);
CREATE INDEX idx_purchase_seller_id ON purchase (seller_id);
CREATE INDEX idx_purchase_payment_method_id ON purchase (payment_method_id);
CREATE INDEX idx_purchase_detail_purchase_id ON purchase_detail (purchase_id);
CREATE INDEX idx_purchase_detail_product_id ON purchase_detail (product_id);
CREATE INDEX idx_sale_seller_id ON sale (seller_id);
CREATE INDEX idx_sale_client_id ON sale (client_id);
CREATE INDEX idx_sale_payment_method_id ON sale (payment_method_id);
CREATE INDEX idx_sale_detail_sale_id ON sale_detail (sale_id);
CREATE INDEX idx_sale_detail_product_id ON sale_detail (product_id);
GO
