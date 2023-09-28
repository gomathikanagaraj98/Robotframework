*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}      https://demo.automationtesting.in/Windows.html


*** Test Cases ***
Tabbedwindows
     open browser  ${url}     ${browser}
     maximize browser window
     click element  xpath://*[@id="Tabbed"]/a/button
     select window  title= Selenium
     click element  xpath://*[@id="main_navbar"]/ul/li[5]/a/span
     sleep  3
     close all browsers




