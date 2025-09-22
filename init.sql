-- Archivo de inicialización para PostgreSQL
-- Este archivo se ejecuta automáticamente cuando se crea el contenedor por primera vez

-- Crear extensiones útiles (opcional)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Verificar que la base de datos existe
SELECT 'Database software2_DB initialized successfully!' as message;

-- Opcional: Crear algunas tablas de ejemplo si las necesitas
-- Descomenta las siguientes líneas si quieres crear tablas iniciales

/*
-- Ejemplo de tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Ejemplo de tabla de productos
CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    descripcion TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar datos de ejemplo
INSERT INTO usuarios (nombre, email) VALUES 
('Usuario Admin', 'admin@software2.com'),
('Usuario Test', 'test@software2.com');

INSERT INTO productos (nombre, precio, descripcion) VALUES 
('Producto 1', 29.99, 'Descripción del producto 1'),
('Producto 2', 49.99, 'Descripción del producto 2');
*/

-- Mensaje de confirmación
\echo 'Base de datos inicializada correctamente'