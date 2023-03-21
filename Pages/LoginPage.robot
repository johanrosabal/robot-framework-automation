*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
# Links
${RELATIVE_URL}  web/index.php/auth/login

# Locators
${txtUsername}  name:username
${txtPassword}  name:password
${btnLogin}     xpath://button[@type="submit"]
${errorUsername}    xpath:(//span[contains(@class,'oxd-input-field-error-message')])[1]
${errorPassword}    xpath:(//span[contains(@class,'oxd-input-field-error-message')])[2]

*** Keywords ***
Sign In
    [Arguments]    ${username}  ${password}
    Set Username    ${username}
    Set Password    ${password}
    Click Login

Get Login Page
    ${URL}=     Set Variable    ${BASE_URL}${RELATIVE_URL}
    Log    ${URL}
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

Set Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${txtUsername}
    Clear Element Text    ${txtUsername}
    Input Text    ${txtUsername}    ${username}

Set Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${txtPassword}
    Clear Element Text    ${txtPassword}
    Input Text    ${txtPassword}    ${password}

Click Login
    Click Element       ${btnLogin}

Verify Login Success
    [Arguments]    ${Relative_Url}
    ${actual_url}=    Get Location
    ${expected_url}=    Set Variable    ${BASE_URL}${Relative_Url}

    Should Be Equal As Strings    ${actual_url}     ${expected_url}





