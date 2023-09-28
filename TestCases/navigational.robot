*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Navigation Test
    open browser  https://www.google.com/    chrome
    maximize browser window
    ${loc}=  get location
    log to console  ${loc}

    go to  https://www.bing.com/
    maximize browser window
    ${loc}=  get location
    log to console  ${loc}

    sleep  2sec


    go back
    ${loc}=  get location
    log to console  ${loc}

    sleep  2sec
    close browser

