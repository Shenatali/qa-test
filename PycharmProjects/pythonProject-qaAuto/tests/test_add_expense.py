from selenium import webdriver
from selenium.webdriver.common.by import By

def test_add_expenses(driver):
    driver.get("https://guest:welcome2qauto@qauto.forstudy.space/profile")

    expenses_button = driver.find_element(By.CLASS, "car_add-expense btn btn-success")
    expenses_button.click()

    expenses_input = driver.find_element(By.ID, "addExpenceLiters")
    expenses_input.send_keys("50")

    add_expenses_button = driver.find_element(By.CLASS, "btn btn-primary")
    add_expenses_button.click()