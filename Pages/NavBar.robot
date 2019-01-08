*** Settings ***
Library           SeleniumLibrary

Variables         ../Variables/GlobalVar.py


*** Variables ***

${loading-in}       xpath://div[@class="loading-in"]
${btn_setting}      xpath://li[@class="settings toggle-menu menu-right jPushMenuBtn"]
${btn_personal_setting}      xpath://li[@class="settings" and contains(.,'My Settings')]

*** Keywords ***

Open Setting Menu
    Wait Until Element Is Not Visible   ${loading-in}   ${SYNC}     Loading execeed timeout time
    Wait Until Element Is Visible   ${btn_setting}
    Click Element   ${btn_setting}

Click On Personal Setting
    Wait Until Element Is Visible   ${btn_personal_setting}
    Click Element   ${btn_personal_setting}
