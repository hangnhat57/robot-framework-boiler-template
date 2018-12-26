*** Settings ***
Library           Selenium2Library

*** Keywords ***
Search The ${TOPIC} On Home Page Of ${APPLICATION}
    Input Text    id=gsc-i-id1    ${TOPIC}
    Click Element    css=input.gsc-search-button.gsc-search-button-v2

Click On The First Searched Link
    Wait Until Element Is Visible    xpath=.//*[@id='___gcse_0']/div/div/div[1]/div[6]/div[2]/div[1]/div/div[2]/div[1]/div[1]/div/a    ${SYNC}
    Click Element    xpath=.//*[@id='___gcse_0']/div/div/div[1]/div[6]/div[2]/div[1]/div/div[2]/div[1]/div[1]/div/a
