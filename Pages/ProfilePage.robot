*** Settings ***
Library           SeleniumLibrary

Variables         ../Variables/GlobalVar.py


*** Variables ***

${btn_write_story}      xpath://li[@class="write-story-work"]

*** Keywords ***

Click on Write a new story
    Click Element      ${btn_write_story}