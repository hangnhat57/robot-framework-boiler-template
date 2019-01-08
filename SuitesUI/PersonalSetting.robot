*** Settings ***
Test Setup        Common.Initialize Application    # Launching the application and its dependencies
Test Teardown     Common.Close Application
Variables         ../Variables/GlobalVar.py
Resource          ../Steps/Common.robot
Resource          ../Pages/HomePage.robot
Resource          ../Pages/NavBar.robot
Resource          ../Pages/SettingPersonalDetailPage.robot

*** Test Cases ***
[TC_003] Login to app with correct user credential
    [Tags]    Main
    Given Go to homepage
    When Login to app with email nhat.nguyen and password Password
    Then Logged in successfully
    When Open Setting Menu
    And Click On Personal Setting
    Then Should be on Personal Detail Page
    When Edit Work Mission to Making greatest things
    Then Work Mission Should be equal to Making greatest things




