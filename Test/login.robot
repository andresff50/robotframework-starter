*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome
${valueUserName}  Admin
${valuePassword}  admin123
${inputUserName}  xpath://input[@name='username']
${inputPassword}  xpath://input[@name='password']
${btnLogin}  xpath://button[@type='submit']

*** Test Cases ***
Login Page
    Open Browser  ${url}  ${browser}
    Wait Until Element Is Visible    ${inputUserName}
    Input Text    ${inputUserName}    ${valueUserName}
    Input Password    ${inputPassword}    ${valuePassword}
    Click Button    ${btnLogin}
    Close Browser