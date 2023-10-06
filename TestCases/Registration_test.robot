*** Settings ***
Library   SeliniumLibrary
Resource     ../Resources/Registration_keywords.robot

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
Registration test
     Open my browser    ${url}    ${browser}
     click reg link
     Enter FirstName        Ashwath
     Enter LastName         Jain
     Enter Phone            1234567890
     Enter Email            ashjai@gamil.com
     Enter Address          Monterrey
     Enter City             Monterrey
     Enter State            Nuevo Leon
     Enter Postal Code      64030
     Select Country         MEXICO
     Enter User Name        ashjai123
     Enter Password         ashjai123
     Enter Confirm Password  ashjai123
     sleep  5 seconds
     Click submit
     Verify successfull registration
     sleep  3 seconds
     Close my browsers
