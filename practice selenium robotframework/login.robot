*** Settings ***
Library   SeliniumLibrary
Resource     ../Resources/Loginresource.robot

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/
${user}  tutorial
${pswd}   tutorial

*** Test Cases ***
Login test
    Open my browser    ${url}    ${browser}
    Enter username     ${url}
    Enter Password     ${pswd}
    click submit
    sleep  3 seconds
    Verify sucessfull login
    close my browsers