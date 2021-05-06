*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/ContactPageKeywords.robot
Resource    ../Commoninfo/Commonfile.robot

Documentation    Verify the User can Succesfully fill the form and Submit the data

Test Setup    Launch Browser
Test Teardown    Close Browser

*** Variables ***
${input_firstname}    Shruthi
${input_lastname}    S V
${input_companyname}    Infogix HR
${input_email}    shruthi.qaauto@gmail.com
${input_Phonenumber}    8660211151
${select_country}    United States
${select_industry}    Media & Communication
${input_comments}    Please Forward this to HR

*** Test Cases ***
TC001 Fill Form
    set selenium implicit wait    10
    Click on Contact Link
    Verify the PageTitle
    Verify Text on the Page
    Enter the details    ${input_firstname}    ${input_lastname}    ${input_companyname}    ${input_email}    ${input_phonenumber}    ${select_country}    ${select_industry}    ${input_comments}
    wait until page contains    Thank You!

