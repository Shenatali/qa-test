CREATE schema qauto_schema;
CREATE table qauto_schema.car_brands(
id varchar(255),
title varchar(255)
);
CREATE table qauto_schema.car_models(
id varchar(255),
carBrandId varchar(255),
title varchar(255)
);
CREATE table qauto_schema.users(
id varchar(255),
firstName varchar(255),
lastName varchar(255),
email varchar(255),
password varchar(255)
);
CREATE table qauto_schema.cars(
id varchar(255),
userrId varchar(255),
carBrandId varchar(255),
carModelId varchar(255),
mileage varchar(255),
initialMileage varchar(255)
);