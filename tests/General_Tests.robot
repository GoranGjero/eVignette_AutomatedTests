*** Settings ***
Documentation  The suite contains the general tests
Resource  ../resources/VignetteApp.robot
Resource  ../resources/CommonMethods.robot

Test Setup  Begin test
Test Teardown  End test

*** Variables ***
${BROWSER} =  ie
${INITIAL_URL} =  http://vinetki.melontech.com/

*** Test Cases ***
The landing page loads fully
    [Documentation]  The test is supposed to verify that the landing page opens fully, and all its elements are loaded
    [Tags]  GeneralTest
    VignetteApp.Navigate to the home page
    VignetteApp.Verify that the "Vehicle Category" options are present
    VignetteApp.Verify that the "FAQ" section is present
    VignetteApp.Verify that the footer is present

Customer - Login existing user
    [Documentation]  The test is supposed to verify that a registered user can login successfully
    [Tags]  GeneralTest
    VignetteApp.Navigate to the home page
    VignetteApp.Navigate to the "Log in" page
    VignetteApp.Populate the "Email Address" field
    VignetteApp.Populate the "Password" field
    VignetteApp.Click the "Log in" button
    VignetteApp.Verify that the user is redirected to their profile