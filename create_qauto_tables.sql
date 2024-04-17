CREATE schema qauto_schema;
CREATE table qauto_schema.car_brands(
id int,
title varchar(255)
);
CREATE table qauto_schema.car_models(
id int,
carBrandId int,
title varchar(255)
);
CREATE table qauto_schema.users(
id int,
firstName varchar(255),
lastName varchar(255),
email varchar(255),
password varchar(255)
);
CREATE table qauto_schema.cars(
id int,
userrId int,
carBrandId int,
carModelId int,
mileage float,
initialMileage float
);