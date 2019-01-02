*** Settings ***
Test Setup        Common.Initialize Application    # Launching the application and its dependencies
Test Teardown     Common.Close Application
Variables         Variables/GlobalVar.py
Resource          Steps/Common.robot
Resource          lib/App.robot

*** Test Cases ***
[TC_001] Search and open application from Google.com
    [Tags]    Main
    App.Search and Open ${APPLICATION} on Google

[TC_002] Search "Robot Framework" on Home Page and open the First Link
    [Tags]    Secondary
    App.Search and Open ${APPLICATION} on Google
    App.Search and Open ${TOPIC} On Home Page Of ${APPLICATION}
