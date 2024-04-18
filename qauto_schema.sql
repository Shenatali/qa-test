CREATE SCHEMA qauto_schema;
CREATE TABLE qauto_schema.car_brands(
   id int PRIMARY KEY auto_increment,
   title varchar(255)
);
CREATE TABLE qauto_schema.car_models(
   id int PRIMARY KEY auto_increment,
   carBrandId int,
   title varchar(255),
   FOREIGN KEY (carBrandId) REFERENCES car_brands (id)
);
CREATE TABLE qauto_schema.users(
   id int PRIMARY KEY auto_increment,
   firstName varchar(255),
   lastName varchar(255),
   email varchar(255),
   password varchar(255)
   );
CREATE TABLE qauto_schema.cars(
   id int,
   userId int,
   carBrandId int,
   carModelId int,
   mileage float,
   initialMileage float,
   FOREIGN KEY (carBrandId) REFERENCES car_brands (id),
   FOREIGN KEY (carModelId) REFERENCES car_models (id),
   FOREIGN KEY (userId) REFERENCES users (id)
   );
   
INSERT INTO qauto_schema.car_brands (id, title) VALUES
   (1, 'Audi'),
   (2, 'BMW'),
   (3, 'Ford'),
   (4, 'Porsche'),
   (5, 'Fiat');
   
INSERT INTO qauto_schema.car_models (id, carBrandId, title) VALUES
   (1, 1, 'TT'),
   (2, 1, 'R8'),
   (3, 1, 'Q7'),
   (4, 1, 'A6'),
   (5, 1, 'A8'),
   (6, 2, '3'),
   (7, 2, '5'),
   (8, 2, 'X5');

INSERT INTO qauto_schema.cars (id, userId, carBrandId, carModelId, mileage, initialMileage) VALUES
   (574, 337, 2, 6,  100, 12),
   (575, 290, 1, 1, 22, 22),
   (577, 342, 1, 1, 2, 1),
   (578, 343, 1, 1, 3, 1),
   (579, 344, 1, 3, 197, 197),
   (584, 349, 1, 3, 100, 100),
   (589, 345, 1, 1, 122, 122), 
   (600, 344, 1, 3, 197, 197);
   
INSERT INTO qauto_schema.users (id, firstName, lastName, email, password) VALUES
   (337, 'larisa', 'ivanova', 'laisa@gmail.com', '$2a$12$n00v7eEJ1NJU38q7sMi.xeru5p6HQu1AXv9rP9nxfW3FdPWPnFa3C'),
   (290, 'Marina', 'Kadurina', 'kadurinamarina04@gmail.com', '$2a$12$9uKsafJdKyWDK33T0ngQAO3uok4qmfkXmHMmEvk7iUPZ12Zp9YFYe'),
   (342, 'Alex', 'Alex', 'qwerty@gmail.com', '$2a$12$81XJSiTGG6x2IXHLvu6cVenDWU6rjq6OE7eUqpM7BTU5SceheRab.'),
   (343, 'Alex', 'Alex', 'qwertyui1@gmail.com', '$2a$12$rKCnu1ZWKi0CIrZgePTDeOimOE0iC8XlfGUdf4FgNRkRP7F6hPqga'),
   (344, 'API', 'TESTER', '123test123@test.com', '$2a$12$blOYHpV.Hr2EocAWMWTqeufoTrbVacwIoTv/Hot49NfAv6lkTBPOe'),
   (349, 'John', 'Doee', 'test11@gmail.com', '$2a$12$Qhi6JndUL5ArjEC7Ayb37.lrQG3SxEHZ8Vn1qA6s2Hp6.PaecMl/m'),
   (345, 'Johnoleh', 'Douzern', 'test228@test.com', '$2a$12$tpPDhMfaI6eYolUi4zIoFe.2gzE1MbVatavXviEI.Ap7NkgiqBAd2');