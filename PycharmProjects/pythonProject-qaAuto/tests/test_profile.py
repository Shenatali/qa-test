def test_profile_info(driver):
    driver.get("https://guest:welcome2qauto@qauto.forstudy.space/profile")

    name_element = driver.find_element(By.ID, "profileName")
    last_name_element = driver.find_element(By.ID, "profileLastName")

    name_text = name_element.text
    last_name_text = last_name_element.text

    assert name_text == "Marichka", "The name is incorect"
    assert last_name_text == "Chechko", "The last name is incorect"