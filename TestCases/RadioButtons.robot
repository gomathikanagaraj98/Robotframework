*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}     ${browser}
    maximize browser window
    set selenium implicit wait  2 seconds

    select radio button  sex        Male
    select radio button  exp        4

    select checkbox    Automation Tester
    select checkbox     Selenium IDE

    unselect checkbox      Automation Tester


*** Keywords ***
