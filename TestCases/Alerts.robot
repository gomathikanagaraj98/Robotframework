*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Handling Alerts
    open browser  https://testautomationpractice.blogspot.com/    chrome
    click element  //*[@id="HTML9"]/div[1]/button[1]
    set selenium implicit wait   2sec
    handle alert  accept
    handle alert  leave
    handle alert  dismiss
    alert should be present  I am an alert box!
    alert should not be present  I am an alert box!