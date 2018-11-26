*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables.robot

*** Keywords ***
Focus a text field and populate it
    [Arguments]  ${text_field_to_be_focused}  ${value_to_be_entered_into_the_text_field}
    wait until page contains element  ${text_field_to_be_focused}
    input text  ${text_field_to_be_focused}  ${value_to_be_entered_into_the_text_field}

Find and click the "Log in" button
    click button  Вход

Detect and verify the error notification
    wait until page contains element  ${LOGIN_ERROR_NOTIFICATION}