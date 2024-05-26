from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

def test_delete_account(driver):
    driver.get("https://guest:welcome2qauto@qauto.forstudy.space/profile")

    delete_account_button = driver.find_element(By.CLASS, "btn btn-danger-bg")
    delete_account_button.click()

    confirm_delete_button = WebDriverWait(driver, 5).until(EC.element_to_be_clickable((By.CLASS, "btn btn-danger")))
    confirm_delete_button.click()

