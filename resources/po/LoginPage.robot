*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables.robot

*** Keywords ***
Find and click the "Log in" button
    click button  Вход

Detect and verify the error notification
    wait until page contains element  ${LOGIN_ERROR_NOTIFICATION}