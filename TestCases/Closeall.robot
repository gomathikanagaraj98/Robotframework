*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
My Testcases
    open browser  https://demowebshop.tricentis.com/register    chrome
    maximize browser window

    open browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login     chrome
    maximize browser window

#    close browser
    close all browsers