*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.infogix.com/
${Browser}    Chrome

*** Keywords ***
Launch Browser
    open browser    ${URL}    ${Browser}
    maximize browser window

Close Browser
    close all browsers
