*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}            https://www.moneycontrol.com/stocks/marketstats/onlybuyers.php

*** Test Cases ***
Select gainers
    open browser  ${url}     ${browser}
    maximize browser window
    set selenium implicit wait  10sec

    ${rows}=  get element count     xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr
    ${columns}=  get element count  xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td

    log to console  ${rows}
    log to console  ${columns}


    ${data1}=   get text   xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]
    ${data2}=   get text   xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[1]
    ${data3}=   get text   xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr[3]/td[1]
    ${data4}=   get text   xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr[4]/td[1]
    ${data5}=   get text   xpath://body[1]/div[1]/main[1]/section[1]/div[2]/section[1]/div[2]/div[1]/table[1]/tbody[1]/tr[5]/td[1]

    ${data01}=  get text  //tbody/tr[1]/td[6]
    ${data02}=  get text  //tbody/tr[2]/td[6]
    ${data03}=  get text  //tbody/tr[3]/td[6]
    ${data04}=  get text  //tbody/tr[4]/td[6]
    ${data05}=  get text  //tbody/tr[5]/td[6]


    log to console  ${data1} ${data2} ${data3} ${data4} ${data5}
    log to console  ${data01} ${data02} ${data03} ${data04} ${data05}
    close browser





