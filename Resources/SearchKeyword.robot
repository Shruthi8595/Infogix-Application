*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjectModel/SearchPage.py

*** Variables ***

${expectedUrl}    "https://www.infogix.com/solutions/regulatory-compliance/"

*** Keywords ***
Click on Search Icon
    click link    ${search_key}

Search Goven
    [Arguments]   ${Text}
    input text    ${type_text}    ${Text}
    press keys     ${type_text}    ENTER


Verify PageTitle
    ${PageTitle} =    get title
    log to console    ${PageTitle}

Click on NextPage
    click link    ${next_page}

Get the Text
    ${textofthelink} =    get text    //ul[@class='reset']/li[4]/div/div/h4
    log     ${textofthelink}

Verify Text
    [Arguments]  ${textshouldbe}
    element text should be  ${text_of_link}  ${textshouldbe}

Click on View
    click link    ${click_view}

Verify Current URL
    ${currenturl} =    get location
    log to console    ${currenturl} is the Current URL and Actual URL
    log to console    ${expectedUrl} is the 404 error page url
    should not be equal as strings    ${currenturl}    ${expectedUrl}



