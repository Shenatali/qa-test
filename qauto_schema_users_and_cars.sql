SELECT * FROM qauto_1.car_models 
INNER JOIN qauto_1.car_brands ON qauto_1.car_brands.id = qauto_1.car_models.carBrandId 
INNER JOIN qauto_1.cars ON qauto_1.cars.carBrandId = qauto_1.car_brands.id 
INNER JOIN qauto_1.users ON qauto_1.users.id = qauto_1.cars.userId
INNER JOIN qauto_1.user_profiles ON qauto_1.user_profiles.userId = qauto_1.users.id;

SELECT car_models.title, car_brands.title, user_profiles.name FROM qauto_1.car_models 
INNER JOIN qauto_1.car_brands ON qauto_1.car_brands.id = qauto_1.car_models.carBrandId 
INNER JOIN qauto_1.cars ON qauto_1.cars.carBrandId = qauto_1.car_brands.id 
INNER JOIN qauto_1.users ON qauto_1.users.id = qauto_1.cars.userId
INNER JOIN qauto_1.user_profiles ON qauto_1.user_profiles.userId = qauto_1.users.id;