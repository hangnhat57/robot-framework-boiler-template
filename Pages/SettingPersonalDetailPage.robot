*** Settings ***
Library           SeleniumLibrary

Variables         ../Variables/GlobalVar.py


*** Variables ***

${input_work_mission}       id:work-purpose-counter
${btn_submit}       name:submit

*** Keywords ***
Should be on Personal Detail Page
    ${response} =    Get Location
    Should Contain    ${response}   settings/personal-details


Edit Work Mission to ${workmission}
    Wait Until Element Is Visible   ${input_work_mission}}
    Input Text  ${input_work_mission}   ${workmission}
    Click Element   ${btn_submit}

Work Mission Should be equal to ${workmission}
    ${response} =    Get Text    ${input_work_mission}
    Should Be Equal As Strings    ${response}   ${workmission}