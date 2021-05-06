*** Settings ***
Library    SeleniumLibrary
Resource   ../Commoninfo/Commonfile.robot
Resource    ../Resources/SearchKeyword.robot

Documentation    Test case 2:Verify if the link "regulatory compliance" is targetting https://www.infogix.com/solutions/regulatory-compliance/

Test Setup    Launch Browser
Test Teardown    Close Browser

*** Variables ***
${Text}    govern
${textshouldbe}    BUILDING DATA TRUST WITH STRATEGIC DATA GOVERNANCE

*** Test Cases ***
TC002 Search Tab
    sleep    5
    Click on Search Icon
    Search Goven    ${Text}
    verify pagetitle
    title should be    You searched for govern | Infogix
    Click on NextPage
    Get the Text
    Verify Text    ${textshouldbe}
    Click on View
    title should be       Building Data Trust with Strategic Data Governance | Infogix
    Verify Current URL


