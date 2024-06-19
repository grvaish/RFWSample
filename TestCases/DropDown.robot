*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
Selecting DropDown and List
    Open Browser    ${url}  ${browser}
    Set Selenium Speed   01
    Maximize browser window

    Scroll Element Into View    xpath=/html/body/form/div[2]/div[19]/select
    #Select From List by Label   RESULT_RadioButton-9    Radio-1
    #Select From List by Index   RESULT_RadioButton-9    2

    #Same command is used for DropDown and List
    Click Element   xpath=/html/body/form/div[2]/div[19]/select/option[4]       #Evening
    Click Element   xpath=/html/body/form/div[2]/div[19]/select/option[2]       #Morning
