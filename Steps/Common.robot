*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Initialize Application
    Open Browser    url=${URL}    browser=${BROWSER}    remote_url=${REMOTE_URL}
    Maximize Browser Window
    Set Selenium Speed	${DELAY}
    
Close Application
	Close Browser