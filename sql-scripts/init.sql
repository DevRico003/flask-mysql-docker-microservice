CREATE USER 'techmart_user' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON techmart_db.* TO 'techmart_user';
FLUSH PRIVILEGES;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Einfügen von Beispieldaten
INSERT INTO products (name, description) VALUES
('Smartphone', 'Ein leistungsstarkes Smartphone mit erstklassiger Kamera.'),
('Laptop', 'Leichter und leistungsstarker Laptop.'),
('Smartwatch', 'Stilvolle Smartwatch mit verschiedenen Gesundheits-Tracking-Funktionen.'),
('Spielekonsole', 'Beliebte Spielekonsole mit einer riesigen Auswahl an Spielen.'),
('Fernseher', '4K-Fernseher mit einer Bildschirmdiagonale von 55 Zoll.'),
('Monitor', 'Gaming-Monitor mit einer Bildwiederholrate von 144 Hz.'),
('Tastatur', 'Mechanische Tastatur mit RGB-Beleuchtung.'),
('Maus', 'Gaming-Maus mit 12 programmierbaren Tasten.'),
('SSD 500GB', 'Schnelle SSD mit 500GB Speicherplatz.');