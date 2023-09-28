*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
MultipleBrowserwindows
     open browser   https://www.google.com/    chrome
     maximize browser window

     set selenium implicit wait  5 seconds

     open browser  https://www.bing.com/      chrome
     maximize browser window


     switch browser   1
     ${title1}=  get title
     log to console  ${title1}

     switch browser   2
     ${title2}=  get title
     log to console  ${title2}


    set selenium implicit wait  5 seconds
     close all browsers
