*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
Selecting RadioButton and CheckBox
    Open Browser    ${url}  ${browser}
    Set Selenium speed   01
    Maximize browser window
    #Radio Button
    Click Element   xpath=//html/body/form/div[2]/div[15]/table/tbody/tr[1]/td/label

    #Check Box
    Scroll Element Into View    xpath=/html/body/form/div[2]/div[17]/table/tbody/tr[2]/td/label
    Click Element   xpath=/html/body/form/div[2]/div[17]/table/tbody/tr[1]/td/label
    Click Element   xpath=/html/body/form/div[2]/div[17]/table/tbody/tr[2]/td/label

    Close Browser
