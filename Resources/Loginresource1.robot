*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}     ${Browser}
    open browser   ${url}     ${Browser}
    maximize browser window

Enter username
    [Arguments]    ${username}
    Input text    //input[@name='userName']        ${username}
Enter Password
    [Arguments]    ${password}
    input text     //input[@name='password']       ${password}

click submit
     click button   submit

Verify sucessfull login
    title should be  Welcome: Mercury Tours

close my browsers
    close all browsers