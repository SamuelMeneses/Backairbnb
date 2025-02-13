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
VALUES ('apt-001', 'Hermosa cabaña en bogota', 'Moderno apartamento en la zona norte', 'Cra 10 #15-30', 'Bogota',
        4, 150.00, 'WiFi, TV, Cocina', 'No mascotas, no fiestas', 'disponible', NOW(), 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/506021062.jpg?k=8148e02a00cecacd74b9523efe31564fa58f8c5e3bc0cf97ef5da953a17bee62&o=&hp=1'),
       ('apt-002', 'Apartamento con vista al mar en Cartagena', 'Apartamento con balcón y vista increíble',
        'Av. Playa #5', 'Cartagena', 2, 200.00, 'Piscina, WiFi, Aire Acondicionado', 'No fumar dentro', 'disponible',
        NOW(), 'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/314518200.jpg?k=e5e1189143b40a61d8e40a2d59605bc3cf01be48d45b619e604df730f09f412c&o='),
       ('apt-003', 'Acogedor apartamento en Medellín', 'Cerca al metro y al centro de la ciudad', 'Calle 30 #45-22',
        'Medellin', 3, 120.00, 'WiFi, Cocina, Estacionamiento', 'No ruidos después de las 10 PM', 'ocupado', NOW(),
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/500349177.jpg?k=5bb7b74694334453e54d170ba86f7410becd7a3204b8825de3e2b557fc6a2971&o=&hp=1'),
        ('apt-004', 'Buen apartamento en Medellín', 'Cerca al parque berrio', 'Cra. 51 #116',
        'Medellin', 2, 50.00, 'Baño privado, colchon', 'No fumar en publico', 'disponible', NOW(),
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/447796881.jpg?k=a26f2c530d5266f8cf05ecc963662de282d76e4aa7af82c06ae3d9d2930c1d32&o=&hp=1'),
        ('apt-005', 'Pieza en Bogota', 'Centro', 'Cra. 51',
        'Bogota', 1, 3.00, 'colchon y tv', 'No fumar ni beber', 'disponible', NOW(),
        'https://media-cdn.tripadvisor.com/media/photo-s/18/f3/42/47/868-mikaili-spot.jpg'),
        ('apt-006', 'Bonita cabaña en Medellin', 'Afueras de Medellin', 'Afueras',
        'Medellin', 2, 60.00, 'Diveras comodidades, desayuno, Tv, linda vista, cama doble', 'No hacer ruido excesivo', 'Disponible', NOW(),
        'https://img.hwnstatic.com/500/350/80/false/S9z7b46NbIHwtT5s9oOjMrRdFCruUs1QTvrx4TYFzxzKqi7KVz.t20s.1t8dFogslr1oMdAV4oBHBF30AkqyMQ9m7yytw5l5eH:DN8V:sg1bIoQOAUsOR6XCEM4ncT1nH4Qa.2TVuLFkm08:E0ztUzOBJkv.UKWrzDiWmEdLX1xa5uGLutI_'),
        ('apt-007', 'Apartamento en Cartagena', 'Cerca al mar', 'Cartagena',
        'Cartagena', 4, 45.00, 'Dos camas dobles', 'No fumar ni manipular los detectores de humo', 'disponible', NOW(),
        'https://pics.nuroa.com/apartamento_en_venta_en_bocagrande_3100000733402438901.jpg'),
        ('apt-008', 'Apartamento en Medellin', 'Cerca a viva envigado', 'Envigado',
        'Medellin', 3, 30.00, 'Wifi, musica, bar', 'No llevar personas adicionales', 'disponible', NOW(),
        'https://images.trvl-media.com/lodging/25000000/24440000/24436100/24436045/3c5d1406.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill'),
        ('apt-009', 'Loft Moderno en Bogota', 'Ubicado en el corazon financiero', 'Calle 72 #10-50', 'Bogota',
        2, 180.00, 'WiFi, TV, Gimnasio, Cocina', 'No mascotas, no fiestas', 'disponible', NOW(),
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/385562018.jpg?k=dfdb838bf7b28962cc13754a5590fcf5ffcd806eeb35720a12f9101b4e416db9&o=&hp=1'),
       ('apt-010', 'Penthouse en Cartagena', 'Vistas panoramicas al Caribe', 'Bocagrande', 'Cartagena',
        6, 400.00, 'Piscina, WiFi, Aire Acondicionado, Jacuzzi', 'No eventos grandes', 'disponible', NOW(),
        'https://image.wasi.co/eyJidWNrZXQiOiJzdGF0aWN3Iiwia2V5IjoiaW5tdWVibGVzXC9nMTA5MzYzMTIwMjMxMDMxMTIwODU3LmpwZyIsImVkaXRzIjp7Im5vcm1hbGlzZSI6dHJ1ZSwicm90YXRlIjowLCJyZXNpemUiOnsid2lkdGgiOjkwMCwiaGVpZ2h0Ijo2NzUsImZpdCI6ImNvbnRhaW4iLCJiYWNrZ3JvdW5kIjp7InIiOjI1NSwiZyI6MjU1LCJiIjoyNTUsImFscGhhIjoxfX19fQ=='),
       ('apt-011', 'Estudio en Medellin', 'Minimalista y comodo', 'Calle 10A #36-15', 'Medellin',
        2, 100.00, 'WiFi, Cocina, Balcon', 'No ruido excesivo', 'disponible', NOW(),
        'https://images.unsplash.com/photo-1560185007-5f0bb1866cab'),
       ('apt-012', 'Apartamento Familiar en Cartagena', 'Amplio y bien ubicado', 'Av. San Martin #25-80', 'Cartagena',
        5, 250.00, 'WiFi, Cocina, Piscina', 'No mascotas', 'disponible', NOW(),
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/272848822.jpg?k=dcb69cb4b035b072ead096388f38e7f0cf90ec312691973c3c947689135225d9&o=&hp=1'),
       ('apt-013', 'Cabaña de Lujo en Medellin', 'Rodeada de naturaleza', 'Via Las Palmas', 'Medellin',
        4, 220.00, 'WiFi, Chimenea, Jacuzzi', 'No fiestas', 'disponible', NOW(),
        'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85'),
       ('apt-014', 'Apartamento en Bogota', 'Cerca a centros comerciales', 'Av. 19 #140-30', 'Bogota',
        3, 130.00, 'WiFi, Cocina, Parqueadero', 'No ruido despues de las 11 PM', 'disponible', NOW(),
        'https://revistaaxxis.com.co/wp-content/uploads/2024/06/APTO_BOGOTA_ARQ_LIBARDO_MORA_1-768x512.png'),
       ('apt-015', 'Suite en Cartagena', 'Frente a la playa', 'Carrera 1 #10-50', 'Cartagena',
        2, 280.00, 'WiFi, Aire Acondicionado, Balcon', 'No visitantes adicionales', 'disponible', NOW(),
        'https://media-cdn.tripadvisor.com/media/photo-s/2c/28/1c/17/sala-junior-suite-estelar.jpg'),
       ('apt-016', 'Apartamento con Vista en Medellin', 'Moderno y bien iluminado', 'Calle 30 #45-12', 'Medellin',
        3, 150.00, 'WiFi, Cocina, Parqueadero', 'No fumar', 'disponible', NOW(),
        'https://images.unsplash.com/photo-1600585152220-90363fe7e115'),
       ('apt-017', 'Habitacion en Bogota', 'Comoda y economica', 'Carrera 50 #98-15', 'Bogota',
        1, 25.00, 'WiFi, TV, Baño compartido', 'No alcohol', 'disponible', NOW(),
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/432661187.jpg?k=c442e9b4d928dda01d5421bf82fc2f70c18a6a22d44f32b80a5aec635299cc4a&o=&hp=1'),
       ('apt-018', 'Apartamento Moderno en Cartagena', 'Lujo en la ciudad amurallada', 'Centro Historico', 'Cartagena',
        2, 320.00, 'WiFi, Jacuzzi, Cocina', 'No mascotas', 'disponible', NOW(),
        'https://images.unsplash.com/photo-1564013799919-ab600027ffc6'),
       ('apt-019', 'Estudio Economico en Medellin', 'Ideal para viajeros', 'Calle 45 #32-21', 'Medellin',
        2, 80.00, 'WiFi, TV, Cocina', 'No fiestas', 'disponible', NOW(),
        'https://cdn.cwmedellin.com/upload/cw-ibiza-15939812991156el_mejor_aparta-studio_para_la_renta_en_medellin10.jpg'),
       ('apt-020', 'Penthouse en Bogota', 'Elegancia en las alturas', 'Calle 100 #7-80', 'Bogota',
        5, 500.00, 'WiFi, Jacuzzi, Terraza', 'No eventos grandes', 'disponible', NOW(),
        'https://images.unsplash.com/photo-1554995207-c18c203602cb'),
       ('apt-021', 'Apartamento con Terraza en Cartagena', 'Espacioso y con vista', 'Bocagrande', 'Cartagena',
        3, 230.00, 'WiFi, Cocina, Aire Acondicionado', 'No fumar', 'disponible', NOW(),
        'https://es.discovercartagena.com.co/wp-content/uploads/2024/02/Town-Huose-fotografia-Tomada-de-The-Rooftop-Guide-.png'),
       ('apt-022', 'Loft en Medellin', 'Acogedor y bien ubicado', 'Carrera 35 #8A-15', 'Medellin',
        2, 120.00, 'WiFi, Cocina, Parqueadero', 'No mascotas', 'disponible', NOW(),
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/515070844.jpg?k=ad4050588f7a0fa9f8bdebf88e8bcbb3af9254d6056d695869299d32c9a67a8b&o=&hp=1'),
       ('apt-023', 'Casa en el Centro de Bogota', 'Ideal para familias', 'Calle 13 #5-30', 'Bogota',
        6, 280.00, 'WiFi, Cocina, Patio', 'No fiestas', 'disponible', NOW(),
        'https://img.properati.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJwcm9wZXJ0aWVzLzAxOTJlYjNjLWFkMTAtN2FhZC05MTUyLTFlOTEyM2IzMmE2NC8wMTkyZWIzYy1iODg0LTcwNDMtOWEwMy00NTBiZjQyNGI3OWIuanBnIiwiYnJhbmQiOiJwcm9wZXJhdGkiLCJlZGl0cyI6eyJyb3RhdGUiOm51bGwsInJlc2l6ZSI6eyJ3aWR0aCI6MzIwLCJoZWlnaHQiOjI0MCwiZml0IjoiY292ZXIifX19');

-- Insertar Imágenes de Apartamentos
INSERT INTO apartment_images (apartment_id, url, "order")
VALUES
    -- Imágenes para apt-001
    ('apt-001', 'https://a0.muscache.com/im/pictures/hosting/Hosting-1204540551273552831/original/748c77ed-5d2c-496a-89ba-5a71cd609b13.jpeg', 1),
    ('apt-001', 'https://posadasrurales.co/6270-large_default/cabana-musicalsanta-elenamedellin-antioquia.jpg', 2),
    ('apt-001', 'https://cabana-el-paraiso-santa-elena.hotelmix.es/data/Photos/OriginalPhoto/5878/587895/587895456/Cabana-Flores-Del-Bosque-Agapanto-Villa-Santa-Elena-Exterior.JPEG', 3),
    ('apt-001', 'https://a0.muscache.com/im/pictures/hosting/Hosting-U3RheVN1cHBseUxpc3Rpbmc6NDk5MzI3MzQ%3D/original/0ac6ec66-c700-4999-9192-1a9baabeced9.jpeg?im_w=720&im_format=avif', 4),
    ('apt-002', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/375243101.jpg?k=0fb2b47fc0ded1f3cdcf73a960fabe9c4cbfd5b97446f6592d0cffed0f1fbd8c&o=&hp=1', 1),
    ('apt-002', 'https://cf.bstatic.com/xdata/images/hotel/max200/375243081.jpg?k=7ae844a951e35a20cb49e6397f7e5368e19ce8cd72960f0d9da97532b0999d0c&o=&hp=1', 2),
    ('apt-002', 'https://q-xx.bstatic.com/xdata/images/hotel/max500/198170066.jpg?k=04beba619a914963292c5f475cd098d430f903c390f02b53f88cdbd0aaa4d4ec&o=', 3),
    ('apt-002', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/567371449.jpg?k=aac02153b6d6060ff9ce339da23145082c3b38f3b7078636aba2241054c2c0bf&o=&hp=1', 4),
    ('apt-003', 'https://hermoso-y-acogedor-apartamento-en-belen-rodeo-alto.medellinhotelsinfo.com/data/Pictures/OriginalPhoto/10688/1068843/1068843934/picture-medellin-hermoso-y-acogedor-apartamento-en-belen-rodeo-alto-1.JPEG', 1),
    ('apt-003', 'https://cf.bstatic.com/xdata/images/hotel/max500/426683529.jpg?k=23fa9c254c367d8eff445dffe191538f3f3669f129346eec5bc6e7f758cea494&o=&hp=1', 2),
    ('apt-003', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/426683577.jpg?k=23986378943ab8529922f96cbec18eff067b15aa976c20ac98b1c19a60b1e7bc&o=&hp=1', 3),
    ('apt-003', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/426683569.jpg?k=e165d86bd4803c12399dc25b69b571eb3496171e67cb162f3f1a16408bddb1ca&o=&hp=1', 4),
    ('apt-004', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/65/18/a6/hotel-santa-ana-medellin.jpg?w=700&h=-1&s=1', 1),
    ('apt-004', 'https://images.trvl-media.com/lodging/105000000/104250000/104242400/104242378/14101aae.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill', 2),
    ('apt-004', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/447796131.jpg?k=f87322eb7cbbeb284513590b625c614ab215b5980fd47c76aa4123d3cf80896d&o=&hp=1', 3),
    ('apt-004', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/447796353.jpg?k=a9fc666dece7ba5bc41bed8c61f77aba546aacab59fae8b7e3306026ee493229&o=&hp=1', 4),
    ('apt-005', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/f3/42/45/868-mikaili-spot.jpg?w=700&h=-1&s=1', 1),
    ('apt-005', 'https://gdb.voanews.com/01000000-0aff-0242-6414-08dcacf46a77_w1200_r1.jpg', 2),
    ('apt-005', 'https://confortable-y-acogedora-habitacion.bogota-hotels-co.net/data/Photos/450x450w/16248/1624833/1624833097.JPEG', 3),
    ('apt-005', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/646393125.jpg?k=515cdad79485cbfeb755186b3bbbb83ebe7142c5d63976289b6f6369a3b5db49&o=&hp=1', 4),
    ('apt-006', 'https://www.revistaaxxis.com.co/wp-content/uploads/2019/07/IMG_3447.jpg', 1),
    ('apt-006', 'https://cincohorizontes.com/wp-content/uploads/2022/06/F125812C-84A1-4B24-BB67-584AB8B6E5D0.JPG.jpg', 2),
    ('apt-006', 'https://a0.muscache.com/im/pictures/miso/Hosting-776116612544832283/original/ab387f2e-605b-4ab2-8c3c-1e94be3c0614.jpeg?im_w=720&im_format=avif', 3),
    ('apt-006', 'https://a0.muscache.com/im/pictures/hosting/Hosting-765929191379217404/original/c67ea79c-5d5f-4583-aae9-44c0fa6c59be.jpeg?im_w=720&im_format=avif', 4),
    ('apt-007', 'https://image.wasi.co/eyJidWNrZXQiOiJzdGF0aWN3Iiwia2V5IjoiaW5tdWVibGVzXC9nOTAxMzkyMDI0MDcyNjA1MTQwMC5qcGciLCJlZGl0cyI6eyJub3JtYWxpc2UiOnRydWUsInJvdGF0ZSI6MCwicmVzaXplIjp7IndpZHRoIjo5MDAsImhlaWdodCI6Njc1LCJmaXQiOiJjb250YWluIiwiYmFja2dyb3VuZCI6eyJyIjoyNTUsImciOjI1NSwiYiI6MjU1LCJhbHBoYSI6MX19fX0=', 1),
    ('apt-007', 'https://image.wasi.co/eyJidWNrZXQiOiJzdGF0aWN3Iiwia2V5IjoiaW5tdWVibGVzXC9nOTAxNzEyMDI0MDcyNjA1MTQyNi5qcGciLCJlZGl0cyI6eyJub3JtYWxpc2UiOnRydWUsInJvdGF0ZSI6MCwicmVzaXplIjp7IndpZHRoIjo5MDAsImhlaWdodCI6Njc1LCJmaXQiOiJjb250YWluIiwiYmFja2dyb3VuZCI6eyJyIjoyNTUsImciOjI1NSwiYiI6MjU1LCJhbHBoYSI6MX19fX0=', 2),
    ('apt-007', 'https://image.wasi.co/eyJidWNrZXQiOiJzdGF0aWN3Iiwia2V5IjoiaW5tdWVibGVzXC9nOTAxNDgyMDI0MDcyNjA1MTQxMC5qcGciLCJlZGl0cyI6eyJub3JtYWxpc2UiOnRydWUsInJvdGF0ZSI6MCwicmVzaXplIjp7IndpZHRoIjo5MDAsImhlaWdodCI6Njc1LCJmaXQiOiJjb250YWluIiwiYmFja2dyb3VuZCI6eyJyIjoyNTUsImciOjI1NSwiYiI6MjU1LCJhbHBoYSI6MX19fX0=', 3),
    ('apt-007', 'https://www.cartagenainmuebles.com/imagenes/inmuebles/propiedades/torre-isabella/apartamento-15/sala_original.jpg', 4),
    ('apt-008', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/519020805.jpg?k=ce88f991367885071710d1b2036edde9b53a6c4cf8b5e9ec2f89f275f53e074d&o=&hp=1', 1),
    ('apt-008', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/519021122.jpg?k=6655b6200849aefeef1f4a4923eeb8ccbeecf8de8f45540e11092e4d45143a81&o=&hp=1', 2),
    ('apt-008', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/519021121.jpg?k=48bef31a17d1a00be678ee1286ed37b1945de5320217bfb3bf0ff69edd2a8733&o=&hp=1', 3),
    ('apt-009', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/394278471.jpg?k=c4433faa74e19d3d7e96da78216c9b0df9fd491ca6f282c7ab333d40fcd4672f&o=&hp=1', 1),
    ('apt-009', 'https://apartamentoconde.hotels-bogota.com/data/Images/OriginalPhoto/16388/1638880/1638880673/bogota-image-1.JPEG', 2),
    ('apt-009', 'https://a0.muscache.com/im/pictures/d42bc3b2-d92a-43db-a36f-b6526c154a97.jpg?im_w=720&im_format=avif', 3),
    ('apt-009', 'https://a0.muscache.com/im/pictures/hosting/Hosting-937193807515231354/original/f64ec2cd-b6a2-42ba-982e-cc82ca7af963.jpeg?im_w=720&im_format=avif', 4),
    ('apt-010', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/483783505.jpg?k=8a94bc61abc45d82e258ec0714b7978a244d4b6c4167baca7b5cfda622c6af53&o=&hp=1', 1),
    ('apt-010', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/483783754.jpg?k=9d5700988d65566ee78b5dc5127b589211f8531f8ada2cb78b772382e5a51fed&o=&hp=1', 2),
    ('apt-010', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/483782425.jpg?k=bc888170113df45958489b8ea473500ecba5cd415a4f19533c2401d4d9c81dd8&o=&hp=1', 3),
    ('apt-010', 'https://q-xx.bstatic.com/xdata/images/hotel/max500/483784257.jpg?k=93c1f78aa9ed0d542c263af07691cfe59af232d00c5095e3f37386cda3db9b1a&o=', 4),
    ('apt-011', 'https://imganuncios.mitula.net/apartaestudio_en_arriendo_en_medellin_en_laureles_a37674_5640057700743414191.jpg', 1),
    ('apt-011', 'https://imganuncios.mitula.net/apartaestudio_en_arriendo_en_medellin_en_laureles_a37665_5550057700743414175.jpg', 2),
    ('apt-011', 'https://imganuncios.mitula.net/apartaestudio_en_arriendo_en_medellin_en_florida_nueva_a37669_5590057700743414182.jpg', 3),
    ('apt-011', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/515070844.jpg?k=ad4050588f7a0fa9f8bdebf88e8bcbb3af9254d6056d695869299d32c9a67a8b&o=&hp=1', 4),
    ('apt-012', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/272850285.jpg?k=9d082168b5db76f594ccbfcbf32bc4ec4851231e8b3bb18b55e4471746c6791a&o=&hp=1', 1),
    ('apt-012', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/280624811.jpg?k=b988ff850a8ad53aa03b1923558565323f7693b9369996bd69fe6bd53f6479d7&o=&hp=1', 2),
    ('apt-012', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/280624815.jpg?k=361d58d866a588a87868745b4ce5adae038644769708813d859d2cb3a43b6c8a&o=&hp=1', 3),
    ('apt-012', 'https://q-xx.bstatic.com/xdata/images/hotel/max500/197429143.jpg?k=7a8504788fa6647940009f49c025967eb3c3f6929283c9609d5f787c915a5a51&o=', 4),
    ('apt-013', 'https://a0.muscache.com/im/pictures/miso/Hosting-54261473/original/f9222f39-1bab-4987-8a61-60984dbdd0ce.jpeg?im_w=720&im_format=avif', 1),
    ('apt-013', 'https://img.jamesedition.com/listing_images/2024/09/25/14/02/41/8b61adc2-62bf-4e59-b0ad-03b8d3a8dd91/je/507x312xc.jpg', 2),
    ('apt-013', 'https://a0.muscache.com/im/pictures/miso/Hosting-23467495/original/02abdeb4-7f6a-4f3f-aa87-3370a7875cc6.jpeg', 3),
    ('apt-013', 'https://revistaaxxis.com.co/wp-content/uploads/2023/10/Apto_tierra_bomba_2-1024x683.jpg', 4),
    ('apt-014', 'https://d219336yigegi3.cloudfront.net/sites/noticias-m2/files/field/image/montereserva-apto.jpg', 1),
    ('apt-014', 'https://revistaaxxis.com.co/wp-content/uploads/2024/03/Apto_feng-shui_Liliana-Becerra_6-1024x683.png', 2),
    ('apt-014', 'https://revistaaxxis.com.co/wp-content/uploads/2024/03/Apto_feng-shui_Liliana-Becerra_4-1024x683.png', 3),
    ('apt-014', 'https://revistaaxxis.com.co/wp-content/uploads/2024/03/Apto_arq_Marisa-Gomez_11-683x1024.png', 4),
    ('apt-015', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/288671899.jpg?k=8004931d7b7cf1ddf5d154cb7031eaa7f33c198387c5c6b47c877001af82eca5&o=&hp=1', 1),
    ('apt-015', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/b0/b8/60/suite-hotels.jpg?w=1200&h=-1&s=1', 2),
    ('apt-015', 'https://www.tuoagency.com/uploads/sizes/blog/como-decorar-suite-hotel.jpg', 3),
    ('apt-015', 'https://www.leardinigroup.com/wp-content/uploads/2020/01/we.me-55-1.jpg', 4),
    ('apt-016', 'https://images.unsplash.com/photo-1564013799919-ab600027ffc6', 1),
    ('apt-016', 'https://images.unsplash.com/photo-1588854337236-091737b908ec', 2),
    ('apt-016', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/432661187.jpg?k=c442e9b4d928dda01d5421bf82fc2f70c18a6a22d44f32b80a5aec635299cc4a&o=&hp=1', 3),
    ('apt-016', 'https://revistaaxxis.com.co/wp-content/uploads/2023/10/Apto_tierra_bomba_2-1024x683.jpg', 4),
    ('apt-017', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/432660169.jpg?k=728324f83ad7be68ce4bb9c9d52605265850639115de112a386a55fb9da27caa&o=&hp=1', 1),
    ('apt-017', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/435341612.jpg?k=1cf40c60f8ad8a92eb1049fb844417d8a244aa0288b54b7914718fab23ab7d81&o=&hp=1', 2),
    ('apt-017', 'https://cf.bstatic.com/xdata/images/hotel/max200/435341499.jpg?k=264fe5cd1a78d511ac4c4e3b00c8344a94ca3840a2fd2adfc695f10a58c3d4d0&o=&hp=1', 3),
    ('apt-017', 'https://cf.bstatic.com/xdata/images/hotel/max200/451846222.jpg?k=19fd8cfc4ce4176bc23e6ae08dc3c3d154254b0f4325e47487c9d93a5cb8b0dd&o=&hp=1', 4),
    ('apt-018', 'https://media-cdn.tripadvisor.com/media/photo-s/18/f3/42/47/868-mikaili-spot.jpg', 1),
    ('apt-018', 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85', 2),
    ('apt-018', 'https://images.unsplash.com/photo-1579621970795-87facc2f976d', 3),
    ('apt-018', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/515070844.jpg?k=ad4050588f7a0fa9f8bdebf88e8bcbb3af9254d6056d695869299d32c9a67a8b&o=&hp=1', 4),
    ('apt-019', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/432661187.jpg?k=c442e9b4d928dda01d5421bf82fc2f70c18a6a22d44f32b80a5aec635299cc4a&o=&hp=1', 1),
    ('apt-019', 'https://images.unsplash.com/photo-1588854337236-091737b908ec', 2),
    ('apt-019', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/385562018.jpg?k=dfdb838bf7b28962cc13754a5590fcf5ffcd806eeb35720a12f9101b4e416db9&o=&hp=1', 3),
    ('apt-019', 'https://images.unsplash.com/photo-1600585152220-90363fe7e115', 4),
    ('apt-020', 'https://latinexclusive.com/sites/default/files/styles/destinations/public/penthouse_de_lujo_bogota.jpg?itok=52J04-aj&c=a8e99e93df0cfcc73c2284e5171c4878', 1),
    ('apt-020', 'https://wynwood-house.com/static/uploads/8782a49d99214618ac2e9ee46c0b2346.jpg', 2),
    ('apt-020', 'https://wynwood-house.com/static/uploads/74465a30dfc649f185c2c84d439eda7b.jpg', 3),
    ('apt-020', 'https://pic.le-cdn.com/thumbs/520x390/152/1/properties/Property-fe00621d52f0d213f5bcebba30671958-127976545.jpg', 4),
    ('apt-021', 'https://images.unsplash.com/photo-1579621970795-87facc2f976d', 1),
    ('apt-021', 'https://images.unsplash.com/photo-1588854337236-091737b908ec', 2),
    ('apt-021', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/385562018.jpg?k=dfdb838bf7b28962cc13754a5590fcf5ffcd806eeb35720a12f9101b4e416db9&o=&hp=1', 3),
    ('apt-021', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/432661187.jpg?k=c442e9b4d928dda01d5421bf82fc2f70c18a6a22d44f32b80a5aec635299cc4a&o=&hp=1', 4),
    ('apt-022', 'https://media-cdn.tripadvisor.com/media/photo-s/18/f3/42/47/868-mikaili-spot.jpg', 1),
    ('apt-022', 'https://images.unsplash.com/photo-1600585152220-90363fe7e115', 2),
    ('apt-022', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/385562018.jpg?k=dfdb838bf7b28962cc13754a5590fcf5ffcd806eeb35720a12f9101b4e416db9&o=&hp=1', 3),
    ('apt-022', 'https://revistaaxxis.com.co/wp-content/uploads/2023/10/Apto_tierra_bomba_2-1024x683.jpg', 4),
    ('apt-023', 'https://http2.mlstatic.com/D_NQ_NP_2X_625085-MCO75848934805_042024-O.webp', 1),
    ('apt-023', 'https://http2.mlstatic.com/D_NQ_NP_2X_760227-MCO79890093480_102024-N.webp', 2),
    ('apt-023', 'https://http2.mlstatic.com/D_NQ_NP_2X_996377-MCO79890299064_102024-N.webp', 3),
    ('apt-023', 'https://cdn2.infocasas.com.uy/repo/img/th.outside500x260.677ff40bb9db8_infocdn__yg0ttlyjo1mgqrrb8veo5368hk64qrx2qki4tqnfjpg.jpg', 4);



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