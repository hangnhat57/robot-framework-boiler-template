*** Settings ***
Library           SeleniumLibrary

Variables         ../Variables/GlobalVar.py

*** Variables ***
${input_email}              xpath://div[@class='v-window-item' and not(contains(@style,"display: none;"))]//input[@placeholder="Email"]
${input_password}           xpath://div[@class='v-window-item' and not(contains(@style,"display: none;"))]//input[@placeholder="Password"]
${input_fistname}           xpath://input[@placeholder="First name"]
${input_lastname}           xpath://input[@placeholder="Last name"]
${btn_login}                xpath://button[contains(.,'Let me in')]
${btn_signup}               xpath://button[contains(.,'Create account')]
${tick_term}                xpath://div[@class='v-input--selection-controls__input']

*** Keywords ***
Go to homepage
    Go To   ${URL}

Login to app with email ${login_email} and password ${login_password}
    Input Text  ${input_email}   ${login_email}
    Input Text  ${input_password}   ${login_password}
    Click Element   ${btn_login}

Logged in successfully
    Wait Until Page Contains    profile     ${SYNC}


Sign up with email ${signup_email} and first name ${signup_firstname} and last name ${signup_lastname} and password ${signup_password}
    Input Text ${input_email}   ${signup_email}
    Input Text ${input_password}   ${signup_password}
    Input Text ${input_fistname}   ${signup_firstname}
    Input Text ${input_lastname}   ${signup_lastname}
    Click Element   ${tick_term}
    Click Element   ${btn_signup}


#Click on the first valid link
#    Wait Until Element Is Visible    link=User-Friendly Techy-Help    ${SYNC}
#    Click Element    link=User-Friendly Techy-Help

#Home page of ${APPLICATION} opens
#    Title Should Be    ${APPTITLE}
