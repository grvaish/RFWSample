*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Testing InputBox
    Open Browser    ${url}  ${browser}
    Maximize browser window
    Title Should Be     nopCommerce demo store
    Click Link  xpath://a[@class='ico-login']
    ${"email_txt"}  set variable    id:Email         #a = email (store value in variable)

    element should be visible   ${"email_txt"}
    element should be enabled    ${"email_txt"}

    Input Text  ${"email_txt"}  pavanoltraining@gmail.com
    BuiltIn.Sleep   5
    Clear element text  ${"email_txt"}
    BuiltIn.Sleep   3
    Close Browser

*** Keywords ***
