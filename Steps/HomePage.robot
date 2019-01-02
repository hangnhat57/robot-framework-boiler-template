*** Settings ***
Library           Selenium2Library

*** Keywords ***
Book a fly on homepage
    Select Fly from ${dep_city} to ${des_city} on HomePage
