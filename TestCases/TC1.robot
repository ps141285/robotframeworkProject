*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://tutorialsninja.com/demo/


*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    LoginIntoApplication
    close browser

*** Keywords ***
LoginIntoApplication
    click link      xpath://a[@title='My Account']
    click link      xpath://a[normalize-space()='Login']
    input text      xpath://input[@id='input-email']        manojpratap21@gmail.com
    input text      xpath://input[@id='input-password']     manoj@123
    click element   xpath://input[@value='Login']