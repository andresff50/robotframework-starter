*** Settings ***
Library     SeleniumLibrary
Library     ../../Library/BrowserDownload.py
Library     ../../Library/fridge.py


*** Keywords ***
Configure ChromeDriver
    Get Chrome Driver
    ${chrome_options}=    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --incognito
    Create Webdriver    Chrome    chrome_options=${chrome_options}
