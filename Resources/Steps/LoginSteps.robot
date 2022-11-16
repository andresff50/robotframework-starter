*** Settings ***
Library     SeleniumLibrary
Resource    ../Pages/LoginPage.robot


*** Keywords ***
Login As Orange User
    [Arguments]    ${userName}    ${password}
    Input User Name    ${userName}
    Input User Password    ${password}
    Click On Login
