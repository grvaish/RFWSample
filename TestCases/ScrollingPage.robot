*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
ScrollingPage:
    Open Browser    ${url}  ${browser}
    Set Selenium Speed  01
    Maximize Browser Window

    # Scroll to a specific pixel number (e.g., 500 pixels down)
#    Execute JavaScript  window.scrollTo(0, 1500)

    # Scroll until a specific element is found (e.g., an element with id 'target-element')
#    SeleniumLibrary.Scroll Element Into View  xpath=//*[@id="main"]/div/div/div/div/div[6]/div[1]/strong

    # Scroll to the bottom of the page
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)

    # Scroll to the Start of the page
    Execute JavaScript  window.scrollTo(0, -document.body.scrollHeight)
    Close Browser

