import random

class Car:
    def __init__(self, mileage=0, fuel=100, economy=None, color=None, model=None):
        self.mileage = mileage
        self.fuel = fuel
        self.economy = economy
        self.color = color
        self.model = model

    def drive(self, distance):
        if self.economy is None:
            print("Вкажіть економію палива для автомобіля")
            return

        fuel_needed = distance / 100 * self.economy
        if fuel_needed > self.fuel:
            raise ValueError("Не вистачає палива")
        self.mileage += distance
        self.fuel -= fuel_needed

    def distance_left(self):
        return (self.fuel / self.economy) * 100

    def fuel_up(self):
        self.fuel += 20


models = ["Toyota", "Honda", "Ford", "Chevrolet", "Nissan"]

cars = []
for _ in range(10):
    color = random.choice(["Red", "Green", "Blue", "White", "Black"])
    model = random.choice(models)
    economy = random.randint(5, 20)
    cars.append(Car(color=color, model=model, economy=economy))

for car in cars:
    car.drive(200)
    car.fuel_up()
    car.drive(100)

def get_max_fuel_car(some_car):
    return some_car.fuel


max_fuel_car: Car = max(cars, key=get_max_fuel_car)

print(f"Car with the most fuel left:"
      f"\nModel: {max_fuel_car.model}"
      f"\nColor: {max_fuel_car.color}"
      f"\nFuel Left: {max_fuel_car.fuel} "
      f"liters")





























