*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://ui.vision/demo/webtest/frames/

*** Test Cases ***
Working On Frames
    Open Browser    ${url}  ${browser}
    Set Selenium Speed   0.5
    Maximize Browser Window

    # Select the first frame
    Select Frame    xpath=/html/frameset/frame[1]
    Input Text    xpath=//*[@id="id1"]/div/input    RamNath
    # Unselect the frame to return to the default content
    Unselect Frame

    #Select the Last Frame
    Select Frame    xpath=/html/frameset/frameset/frame[3]
    Input Text  xpath=//*[@id="id4"]/div/input  Harish
    Unselect Frame

    Close Browser
