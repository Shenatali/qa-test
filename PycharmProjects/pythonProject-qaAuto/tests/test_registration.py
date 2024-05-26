import pytest
from selenium import webdriver
from page_objects.registration_page import RegistrationPage


@pytest.fixture
def driver():
    driver = webdriver.Chrome()
    yield driver
    driver.quit()


def test_registration(driver):
    driver.get("https://guest:welcome2qauto@qauto.forstudy.space/")

    registration_page = RegistrationPage(driver)

    registration_page.fill_registration_form(first_name="Marichka", last_name="Chechko", email="mari@gmail.com", password="Marichka111")