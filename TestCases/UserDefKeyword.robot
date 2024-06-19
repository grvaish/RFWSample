*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://demo.nopcommerce.com/login?returnUrl=%2F
${browser}     chrome

*** Test Cases ***
UserDefineArguments:
    #Without Argument
    #launchbrowser1

    #With Argument
    launchbrowser2   ${url}  ${browser}
    Input Text  id:Email    pavanoltraining@gmail.com
    Input Text  id:Password  Test@123

    #return value
    ${title}=  Get Page Title
    Log    The page title is: ${title}

*** Keywords ***
launchbrowser1
    open browser    ${url}  ${browser}
    maximize browser window

launchbrowser2
    [Arguments]     ${appurl}  ${appbrowser}
    Open Browser    ${appurl}  ${appbrowser}
    maximize browser window

Get Page Title
    ${title}=  Get Title
    [Return]  ${title}