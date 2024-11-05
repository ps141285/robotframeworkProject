*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://tutorialsninja.com/demo/



*** Test Cases ***
TestingInputbox
        open browser    ${url}    ${browser}
        maximize browser window
        InputBox_Validation
        close browser


*** Keywords ***
InputBox_Validation
     title should be     Your Store
        click link  xpath://a[@title='My Account']
        click link  xpath://a[normalize-space()='Login']
        ${"email_txt"}  set variable    xpath://input[@id='input-email']
        element should be visible   ${"email_txt"}
        element should be enabled   ${"email_txt"}
        input text  ${"email_txt"}  ps141285@gmail.com
        sleep   5
        clear element text  ${"email_txt"}
        sleep   5
