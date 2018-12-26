*** Settings ***
Library           Selenium2Library

*** Keywords ***
Initialize Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed	${DELAY}
    
Close Application
	Close Browser