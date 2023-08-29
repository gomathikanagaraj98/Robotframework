*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}     chrome
${url}         https://demo.nopcommerce.com/

*** Test Cases ***
LOGINTEST
    open browser   ${url}   ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link  //a[@class='ico-login']
    input text  id:Email         gokanvc@gmail.com
    input text  id:Password      gk@059
    click element  //button[normalize-space()='Log in']

