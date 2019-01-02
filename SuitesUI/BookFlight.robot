*** Settings ***
Test Setup        Common.Initialize Application    # Launching the application and its dependencies
Test Teardown     Common.Close Application
Variables         ../Variables/GlobalVar.py
Resource          ../Steps/Common.robot
Resource          ../Steps/HomePage.robot
*** Variables ***
${dep_city}     NewYork
${des_city}     Paris
*** Test Cases ***
[TC_001] Search and open application from Google.com
    [Tags]    Main
    Book a fly on homepage


