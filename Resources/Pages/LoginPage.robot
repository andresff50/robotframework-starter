*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${userNameField}    xpath://input[@name='username']
${passwordField}    xpath://input[@name='password']
${loginButton}      xpath://button[@type='submit']


*** Keywords ***
Input User Name
    [Arguments]    ${userName}
    Wait Until Element Is Visible    ${userNameField}
    Input Text    ${userNameField}    ${userName}

Input User Password
    [Arguments]    ${password}
    Input Password    ${passwordField}    ${password}

Click On Login
    Click Element    ${loginButton}
