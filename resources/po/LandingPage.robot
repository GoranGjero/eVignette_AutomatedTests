*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables.robot

*** Keywords ***
### General
Navigate to
    Go To  ${INITIAL_URL}

Click the "Log in" button
    click link  ${LANDING_LOGIN_BUTTON}

### FAQ section
Validate the "FAQ" section of the page
    wait until page contains element  ${LANDING_FAQ_SECTION}
    ${faq_text} =  get text  ${LANDING_FAQ_SECTION}
    should be equal as strings  ${faq_text}  Често задавани въпроси  ignore_case=true

### Footer section
Validate the whole footer of the page
    wait until page contains element  ${LANDING_WHOLE_FOOTER}

Validate the section of the footer
    [Arguments]  ${footer_section}
    wait until page contains  ${footer_section}