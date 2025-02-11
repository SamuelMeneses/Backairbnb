-- Insertar Usuarios
INSERT INTO users (email, password, first_name, last_name, phone, created_at, status)
VALUES ('juan.perez@example.com', '123456', 'Juan', 'Perez', '123456789', NOW(), true),
       ('maria.gomez@example.com', '123456', 'Maria', 'Gomez', '987654321', NOW(), true),
       ('carlos.lopez@example.com', '123456', 'Carlos', 'Lopez', '555123456', NOW(), false);

-- Insertar Ciudades
INSERT INTO cities (city_name)
VALUES ('Bogota'),
       ('Medellin'),
       ('Cartagena');

-- Insertar Apartamentos
INSERT INTO apartments (id, title, description, address, city, capacity, price_per_night, amenities, rules, status,
                        created_at, image_default)
VALUES ('apt-001', 'Hermoso Apartamento en Bogotá', 'Moderno apartamento en la zona norte', 'Cra 10 #15-30', 'Bogota',
        4, 150.00, 'WiFi, TV, Cocina', 'No mascotas, no fiestas', 'disponible', NOW(), 'public/images/apto01.jpeg'),
       ('apt-002', 'Apartamento con vista al mar en Cartagena', 'Apartamento con balcón y vista increíble',
        'Av. Playa #5', 'Bogota', 2, 200.00, 'Piscina, WiFi, Aire Acondicionado', 'No fumar dentro', 'disponible',
        NOW(), 'https://images.unsplash.com/photo-1449158743715-0a90ebb6d2d8?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FiYSVDMyVCMWF8ZW58MHx8MHx8fDA%3D'),
       ('apt-003', 'Acogedor apartamento en Medellín', 'Cerca al metro y al centro de la ciudad', 'Calle 30 #45-22',
        'Bogota', 3, 120.00, 'WiFi, Cocina, Estacionamiento', 'No ruidos después de las 10 PM', 'ocupado', NOW(),
        'public/images/apto03.jpeg');

-- Insertar Imágenes de Apartamentos
INSERT INTO apartment_images (apartment_id, url, "order")
VALUES ('apt-001', 'https://example.com/apt1-1.jpg', 1),
       ('apt-001', 'https://example.com/apt1-2.jpg', 2),
       ('apt-002', 'https://example.com/apt2-1.jpg', 1),
       ('apt-002', 'https://example.com/apt2-2.jpg', 2),
       ('apt-003', 'https://example.com/apt3-1.jpg', 1);

-- Insertar Reservas
INSERT INTO bookings (id, user_id, apartment_id, start_date, end_date, total_price, status, created_at)
VALUES ('bkg-001', 'juan.perez@example.com', 'apt-001', NOW() + INTERVAL '1 day', NOW() + INTERVAL '5 days', 600.00,
        'confirmada', NOW()),
       ('bkg-002', 'maria.gomez@example.com', 'apt-002', NOW() + INTERVAL '3 days', NOW() + INTERVAL '7 days', 800.00,
        'pendiente', NOW()),
       ('bkg-003', 'carlos.lopez@example.com', 'apt-003', NOW() + INTERVAL '2 days', NOW() + INTERVAL '6 days', 480.00,
        'cancelada', NOW());

-- Insertar Pagos
INSERT INTO payments (id, booking_id, user_id, amount, payment_method, status)
VALUES ('pay-001', 'bkg-001', 'juan.perez@example.com', 600.00, 'Tarjeta de Crédito', 'completado'),
       ('pay-002', 'bkg-002', 'maria.gomez@example.com', 800.00, 'PayPal', 'pendiente'),
       ('pay-003', 'bkg-003', 'carlos.lopez@example.com', 480.00, 'Transferencia Bancaria', 'reembolsado');