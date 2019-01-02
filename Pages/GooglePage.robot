*** Settings ***
Library           Selenium2Library

*** Variables ***
${input_txt}    name:q
${click_btn}    name:btnK

*** Keywords ***
Search ${APPLICATION} on Google
    Input Text    ${input_txt}    ${APPLICATION}
    Click Button    ${click_btn}
    GooglePage.Click on the first valid link
    GooglePage.Home page of ${APPLICATION} opens

Click on the first valid link
    Wait Until Element Is Visible    link=User-Friendly Techy-Help    ${SYNC}
    Click Element    link=User-Friendly Techy-Help

Home page of ${APPLICATION} opens
    Title Should Be    ${APPTITLE}
