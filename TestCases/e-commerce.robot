*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}       chrome
${url}           https://demo.nopcommerce.com/


*** Test Cases ***
Websitelogin
    open browser        ${url}  ${browser}
    maximize browser window
    set selenium implicit wait  10 seconds

    title should be  nopCommerce demo store
    click link  //a[@class='ico-login']
    ${"email_txt"}  set variable   id=Email
    element should be visible  ${"email_txt"}
    element should be enabled  ${"email_txt"}
#
#    input text  ${"email_txt"}   hsr12@gmail.com
#    sleep  5 seconds
#    clear element text  ${"email_txt"}
#    sleep  5 seconds
#    close browser
