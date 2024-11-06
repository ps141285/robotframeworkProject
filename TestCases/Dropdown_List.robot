*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Drpdwn_list_test
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2seconds
    drpdwn_list_check
    close browser

*** Keywords ***
drpdwn_list_check
    select from list by label    country    United States
    select from list by value    country    france
    select from list by index    country    3
