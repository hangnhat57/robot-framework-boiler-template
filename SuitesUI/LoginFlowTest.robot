*** Settings ***
Test Setup        Common.Initialize Application    # Launching the application and its dependencies
Test Teardown     Common.Close Application
Variables         ../Variables/GlobalVar.py
Resource          ../Steps/Common.robot
Resource          ../Pages/HomePage.robot

*** Test Cases ***
[TC_001] Login to app with correct user credential
    [Tags]    Main
    Given Go to homepage
    When Login to app with email nhat.nguye and password Testing123
    Then Logged in successfully

[TC_002] Login to app with incorrect user credential
    [Tags]    Main
    Given Go to homepage
    When Login to app with email nhat.nguyenand password Testing
    Then Logged in successfully

