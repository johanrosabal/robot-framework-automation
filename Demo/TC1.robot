*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
DragAndDropAction
    #Drag And Drop
    Open Browser    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html  ${browser}
    Maximize Browser Window
    # Rome to Italy Box
    Drag And Drop    id:box6    id:box106
    # Madrid to Spain
    Drag And Drop    id:box7    id:box107
    # Washington to United States
    Drag And Drop    id:box3    id:box103
    # Seoul to South Korea
    Drag And Drop    id:box5    id:box105
    # Stockholm to Sweden
    Drag And Drop    id:box2    id:box102
    # Copenhagen to Denmark
    Drag And Drop    id:box4    id:box104
    # Oslo to Norway
    Drag And Drop    id:box1    id:box101

    Sleep    3
    Close Browser

DoubleClickAction
    Skip
    Open Browser    https://demo.guru99.com/test/simple_context_menu.html    ${browser}
    #Double Click Action
    Double Click Element    xpath://button[contains(text(),'Double-Click Me To See Alert')]
    Sleep    3
    Close Browser

MouseRightClickAction
    Skip
    #Right Click/Open
    Open Browser    https://demo.guru99.com/test/simple_context_menu.html    ${browser}
    Maximize Browser Window
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3

LoginTest
    Skip
    ##Create Webdriver    CHROME  executable_path="C:\WebDrivers\chromedriver.exe"
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Title Should Be     nopCommerce demo store
    SignIn
    Close Browser

PracticeRadioButtonsAndCheckBoxes
    Skip
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/  ${browser}
    Maximize Browser Window

    #Selecting Radios Buttons
    Select Radio Button    radioButton  radio1
    Sleep    5s

    #Selecting Checkboxes Buttons
    Select Checkbox    checkBoxOption1
    Select Checkbox    checkBoxOption2
    Select Checkbox    checkBoxOption3
    Sleep    5s

    #UnSelect Checkboxes
    Unselect Checkbox     checkBoxOption3
    Sleep    3s

    Close Browser



*** Keywords ***
SignIn
    Click Link    xpath://a[@class='ico-login']
    ${"txt_email"}  Set Variable    xpath://input[@id='Email']

    Element Should Be Visible    ${"txt_email"}
    Element Should Be Enabled    ${"txt_email"}


    Input Text    ${"txt_email"}    johan.rosabal@gmail.com
    Sleep    5s
    Clear Element Text    ${"txt_email"}
    Input Text    xpath://input[@id='Password']     12345678
    Click Button    xpath:(//button[@type='submit'])[2]
    Sleep    5s
