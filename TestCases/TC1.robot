*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.example.com

*** Test Cases ***
Check Test Case
    Open Browser    ${URL}    chrome
    Title Should Be    Example Domain
    Close Browser
