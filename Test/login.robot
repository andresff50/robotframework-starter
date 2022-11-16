*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Steps/LoginSteps.robot
Resource            ../Resources/Utils/WebDriver.robot

Suite Setup         Launch Chrome Browser
Suite Teardown      Close Web Test


*** Variables ***
${userName}    %{USERNAME}
${password}    %{PASSWORD}


*** Test Cases ***
Login Page
    Given Login As Orange User    ${userName}    ${password}
