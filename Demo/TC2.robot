*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    ##Create Webdriver    CHROME  executable_path="C:\WebDrivers\chromedriver.exe"
    Open Browser    https://demo.applitools.com/    chrome
    Sleep    5s
    Close All Browsers


*** Keywords ***

