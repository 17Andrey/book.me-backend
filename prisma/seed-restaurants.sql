-- Добавление 12 ресторанов
INSERT INTO Restaurant (name, address, cuisines, price, description, image, createdAt, updatedAt)
VALUES
('GRILL AND CHILL', 'ул. 8 Марта, д. 10', 'Европейская', 1, NULL, '1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('PASHTET', 'ул. Толмачева, д. 23', 'Европейская,Русская', 2, NULL, '2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('КАК У ТЁЩИ', 'ул. Малышева, д. 17', 'Европейская,Русская,Грузинская', 3, NULL, '3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('CARBONARA', 'просп. Ленина, 25', 'Итальянская', 2, NULL, '4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('GARGULIA', 'ул. Энгельса, д. 7', 'Французская,Европейская', 1, NULL, '5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Claude Monet', 'ул. Розы Люксембург, д. 49', 'Французская', 3, NULL, '6.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Tokyo Sushi', 'ул. Сакко и Ванцетти, д. 99', 'Японская', 2, NULL, '7.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Bavaria', 'ул. Шейнкмана, д. 75', 'Немецкая,Европейская', 2, NULL, '8.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('La Provence', 'ул. Белинского, д. 32', 'Французская,Средиземноморская', 3, NULL, '9.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Пельменная №1', 'ул. Ленина, д. 50', 'Русская', 1, NULL, '10.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Tandoor', 'ул. Мира, д. 12', 'Индийская', 2, NULL, '11.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('El Toro', 'ул. Московская, д. 21', 'Мексиканская,Гриль', 2, NULL, '12.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
