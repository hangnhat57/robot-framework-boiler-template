*** Settings ***
Library           Selenium2Library

*** Variables ***
${select_dep_city}    name:fromPort
${select_des_city}    name:toPort
${submit}             class:btn btn-primary
*** Keywords ***

Select Fly from ${dep_city} to ${des_city} on HomePage
    Select From List By Label   ${select_dep_city}  ${dep_city}
    Select From List By Label   ${select_des_city}  ${des_city}
    Click Element ${submit}

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
