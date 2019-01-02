*** Settings ***
Library           Selenium2Library

*** Keywords ***
Search and Open ${APPLICATION} on Google
    GooglePage.Search ${APPLICATION} on Google
    GooglePage.Click on the first valid link
    GooglePage.Home page of ${APPLICATION} opens

Search and Open ${TOPIC} On Home Page Of ${APPLICATION}
    uftHelpHomePage.Search The ${TOPIC} On Home Page Of ${APPLICATION}
    uftHelpHomePage.Click On The First Searched Link
