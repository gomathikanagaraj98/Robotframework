*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console  ${speed}

    open browser  https://demowebshop.tricentis.com/register      chrome
    maximize browser window
    set selenium speed    2sec

    select radio button  Gender                 F
    input text           name:FirstName       joe
    input text           name:LastName         jack
    input text           name:Email             jojk54@gmail.com
    input text           name:Password          joejack8
    input text           name:ConfirmPassword   joejack8

    ${speed}=   get selenium speed
    log to console  ${speed}