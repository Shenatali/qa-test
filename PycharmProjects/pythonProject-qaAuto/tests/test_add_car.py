def test_add_car(driver):
    driver.get("https://guest:welcome2qauto@qauto.forstudy.space/profile")

    add_car_button = driver.find_element(By.CLASS, "btn btn-primary")
    add_car_button.click()

    car_brand_input = driver.find_element(By.ID, "addCarBrand")
    car_brand_input.send_keys("BMW")

    car_model_input = driver.find_element(By.ID, "addCarModel")
    car_model_input.send_keys("X5")

    add_car_button = driver.find_element(By.CLASS, "btn btn-primary")
    add_car_button.click()