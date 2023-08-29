*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}         https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Handling Dropdown and Lists
    open browser  ${url}    ${browser}
    maximize browser window

    select from list by label  continents        South America
    sleep   2 seconds
    select from list by index  continents         6

    select from list by label  selenium_commands        Browser Commands
    sleep   2 seconds
    select from list by label  selenium_commands        Wait Commands

    unselect from list by label   selenium_commands        Browser Commands



*** Keywords ***
