*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_EMAIL_FIELD} =  xpath=//*[@id="Email"]
${LOGIN_PASSWORD_FIELD} =  xpath=//*[@id="Password"]
${CUSTOMER_EMAIL_ADDRESS} =  ggjeroski@melontech.com
${CUSTOMER_PASSWORD} =  test1234!

${CUSTOMER_INCORRECT_EMAIL} =  test@test.com
${CUSTOMER_INCORRECT_PASSWORD} =  testPassword
${LOGIN_ERROR_NOTIFICATION} =  xpath=/html/body/main/section/div/div/div/div/form/div[4]


*** Keywords ***
Focus and populate the "Email Address" field
    wait until page contains element  ${LOGIN_EMAIL_FIELD}
    input text  ${LOGIN_EMAIL_FIELD}  ${CUSTOMER_EMAIL_ADDRESS}

Focus and populate the "Password" field
    wait until page contains element  ${LOGIN_PASSWORD_FIELD}
    input text  ${LOGIN_PASSWORD_FIELD}  ${CUSTOMER_PASSWORD}

Find and click the "Log in" button
    click button  Log in

Focus and populate the "Email Address" field with incorrect email address
    wait until page contains element  ${LOGIN_EMAIL_FIELD}
    input text  ${LOGIN_EMAIL_FIELD}  ${CUSTOMER_INCORRECT_EMAIL}

Focus and populate the "Password" field with incorrect password
    wait until page contains element  ${LOGIN_PASSWORD_FIELD}
    input text  ${LOGIN_PASSWORD_FIELD}  ${CUSTOMER_INCORRECT_PASSWORD}

Detect and verify the error notification
    wait until page contains element  ${LOGIN_ERROR_NOTIFICATION}