*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjectModel/ContactPage.py

*** Keywords ***

Click on Contact Link
    click link    Contact

Verify the PageTitle
    ${contactpagetitle} =     get title
    log    ${contactpagetitle}

Verify Text on the Page
    page should contain    Connect with Infogix

Enter the details
    [Arguments]    ${input_firstname}    ${input_lastname}    ${input_companyname}    ${input_email}    ${input_phonenumber}    ${select_country}    ${select_industry}    ${input_comments}
    input text    ${First_name}    ${input_firstname}
    input text    ${last_name}    ${input_lastname}
    input text    ${Company_name}    ${input_companyname}
    input text    ${Email}    ${input_email}
    input text    ${phone_no}    ${input_phonenumber}
    select from list by label    ${HQ_Location_Country}    ${select_country}
    select from list by value    ${Industry}    ${select_industry}
    input text    ${Comments}    ${input_comments}
    click element    ${Checkbox}
    click button    ${Submit_button}

