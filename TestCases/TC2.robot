*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Check
    Open Browser    ${url}   ${browser}
    LoginApplication
    Close Browser

*** Keywords ***
LoginApplication
    Click Link  xpath://a[@class='ico-login']
    Input Text  id:Email    pavanoltraining@gmail.com
    Input Text  id:Password  Test@123
    Click Element   xpath://*[@id="main"]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button