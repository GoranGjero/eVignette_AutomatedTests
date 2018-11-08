*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_EMAIL_FIELD} =  xpath=//*[@id="Email"]
${LOGIN_PASSWORD_FIELD} =  xpath=//*[@id="Password"]
${CUSTOMER_EMAIL_ADDRESS} =  ggjeroski@melontech.com
${CUSTOMER_PASSWORD} =  test1234

*** Keywords ***
Focus and populate the "Email Address" field
    wait until page contains element  ${LOGIN_EMAIL_FIELD}
    input text  ${LOGIN_EMAIL_FIELD}  ${CUSTOMER_EMAIL_ADDRESS}

Focus and populate the "Password" field
    wait until page contains element  ${LOGIN_PASSWORD_FIELD}
    input text  ${LOGIN_PASSWORD_FIELD}  ${CUSTOMER_PASSWORD}

Find and click the "Log in" button
    click button  Log in