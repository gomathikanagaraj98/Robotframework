*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}     ${Browser}
    open browser   ${url}     ${Browser}
    maximize browser window

click reg link
    click link     //a[normalize-space()='REGISTER']
Enter FirstName
    [Arguments]    ${firstName}
    Input text     //input[@name='firstName']       ${firstName}
Enter LastName
    [Arguments]     ${lastName}
    input text     //input[@name='lastName']       ${lastName}
Enter Phone
    [Arguments]     ${phone}
    input text      //input[@name='phone']         ${phone}
Enter email
    [Arguments]     ${userName}
    input text      //input[@id='userName']        ${userName}
Enter Address
    [Arguments]     ${address1}
    input text      //input[@name='address1']      ${address1}
Enter City
    [Arguments]     ${city}
    input text      //input[@name='city']          ${city}
Enter State
    [Arguments]     ${state}
    input text      //input[@name='state']         ${state}
Enter Postal Code
    [Arguments]     ${postalCode}
     input text     //input[@name='postalCode']    ${postalCode}
Select Country
    [Arguments]     ${country}
    select from list by label     //select[@name='country']      ${country}
Enter User Name
    [Arguments]     ${email}
    input text      //input[@id='email']           ${email}
Enter Password
    [Arguments]     ${password}
    input text      //input[@name='password']      ${password}
Enter Confirm Password
    [Arguments]     ${confirmPassword}
    input text      //input[@name='confirmPassword']   ${confirmPassword}
Click submit
    click button  //input[@name='submit']
Verify successfull registration
    page should contain  Thank you for registering.
Close my browsers
    close all browsers

