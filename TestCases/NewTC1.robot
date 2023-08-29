*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}     chrome
${url}        https://demo.nopcommerce.com/

*** Test Cases ***
Logintest
    open browser      ${url}        ${browser}
    LoginToApplication
    close browser


*** Keywords ***
LoginToApplication
    click link  //a[@class='ico-login']
    input text  id:Email           mathikaraj55@gmail.com
    input text  id:Password        kjgm24
    click element  xpath://button[normalize-space()='Log in']