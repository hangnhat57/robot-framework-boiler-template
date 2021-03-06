*** Settings ***
Test Setup        Common.Initialize Application    # Launching the application and its dependencies
Test Teardown     Common.Close Application
Variables         ../Variables/GlobalVar.py
Resource          ../Steps/Common.robot
Resource          ../Pages/HomePage.robot

*** Test Cases ***
[TC_001] Login to app with company admin user
    [Tags]    Main
    Given Go to homepage
    When Login to app with email nhat.nguyen and password khongphaipass
    Then Logged in successfully

