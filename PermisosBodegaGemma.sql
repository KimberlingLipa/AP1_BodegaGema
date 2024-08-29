-- Crear la base de datos
CREATE DATABASE BodegaGemma;

-- Cambiar el contexto a la base de datos BodegaGemma
USE BodegaGemma;

-- Crear el login en el servidor (este paso se hace una sola vez, no en cada base de datos)
-- Si ya has creado el login previamente, puedes omitir esta línea
CREATE LOGIN gemma WITH PASSWORD = 'admin123';

-- Crear el usuario en la base de datos BodegaGemma
CREATE USER gemma FOR LOGIN gemma;

-- Otorgar permisos de creación y modificación de objetos
ALTER ROLE db_ddladmin ADD MEMBER gemma;

-- Otorgar permisos para operaciones de datos en el esquema 'dbo'
GRANT INSERT, SELECT, UPDATE, DELETE ON SCHEMA::dbo TO gemma;

-- Otorgar permisos para modificar y ejecutar procedimientos
GRANT ALTER, EXECUTE ON SCHEMA::dbo TO gemma;

-- Permiso para conectar a la base de datos
GRANT CONNECT TO gemma;

-- Permiso para crear procedimientos almacenados y otras operaciones de DDL
GRANT CREATE PROCEDURE TO gemma;
GRANT CREATE FUNCTION TO gemma;
GRANT CREATE VIEW TO gemma;
GRANT CREATE TABLE TO gemma;

-- Otorgar rol db_owner para permisos completos (opcional, si deseas otorgar control total)
ALTER ROLE db_owner ADD MEMBER gemma;


