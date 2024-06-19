*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseEvents:
    #Right Click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu   xpath=/html/body/div/section/div/div/div/p/span
    sleep   3

    #Double click event on another browser
    go to   https://testautomationpractice.blogspot.com/
    double click element    xpath=//*[@id="HTML10"]/div[1]/button
    sleep   3

    #Drag and Drop Event on another browser
    go to   http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop   id:box6     id:box106       #source and target id
    sleep   3

    close browser