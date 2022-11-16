*** Settings ***
Library     SeleniumLibrary
Resource    DriverOptions.robot


*** Keywords ***
Launch Chrome Browser
    Configure ChromeDriver
    Go To    ${url}

Close Web Test
    Close Browser
