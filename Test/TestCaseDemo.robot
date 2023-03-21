*** Settings ***
Documentation    This is a demostration of test case with Page Object Model Pattern

Resource    ../Resources/resources.robot
Resource    ../Pages/LoginPage.robot


*** Test Cases ***
Sign In an User
    Get Login Page
    Sign In     Admin  admin123
    Verify Login Success    web/index.php/dashboard/index
