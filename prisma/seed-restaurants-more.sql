-- Добавление еще 6 ресторанов
INSERT INTO Restaurant (name, address, cuisines, price, description, image, createdAt, updatedAt)
VALUES
('Vegan Place', 'ул. Луначарского, д. 15', 'Вегетарианская,Европейская', 2, NULL, '13.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Steak House', 'ул. Куйбышева, д. 44', 'Гриль,Американская', 3, NULL, '14.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Sakura', 'ул. Мира, д. 8', 'Японская,Азиатская', 2, NULL, '15.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Bakery & Coffee', 'ул. Вайнера, д. 12', 'Европейская,Кофейня', 1, NULL, '16.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Georgian Yard', 'ул. Чапаева, д. 19', 'Грузинская', 2, NULL, '17.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Fish & Chips', 'ул. Малышева, д. 56', 'Британская,Европейская', 1, NULL, '18.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
