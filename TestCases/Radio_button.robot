*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Radio_button and checkbox
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds
    Radi_btn_Chkbox_validation
     close browser

*** Keywords ***
 Radi_btn_Chkbox_validation
    select radio button     gender  female
    select checkbox         sunday
    select checkbox         tuesday
    select checkbox         friday
    unselect checkbox       sunday
    unselect checkbox       friday
    select radio button     gender  male
