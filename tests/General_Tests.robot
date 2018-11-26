*** Settings ***
Documentation  The suite contains the general tests
Resource  ../resources/VignetteApp.robot
Resource  ../resources/CommonMethods.robot
Resource  ../resources/Variables.robot

Test Setup  Begin test
Test Teardown  End test

*** Test Cases ***
The landing page loads fully
    [Documentation]  The landing page opens fully, and all its elements are loaded
    [Tags]  skip
    VignetteApp.Navigate to the home page
    VignetteApp.Verify that the "Vehicle Category" options are present
    VignetteApp.Verify that the "FAQ" section is present
    VignetteApp.Verify that the footer is present

Customer - Login existing user
    [Documentation]  Registered user can login successfully
    [Tags]  skip
    VignetteApp.Navigate to the home page
    VignetteApp.Navigate to the "Log in" page
    VignetteApp.Populate the "Email Address" field
    VignetteApp.Populate the "Password" field
    VignetteApp.Click the "Log in" button
    VignetteApp.Verify that the user is redirected to their profile

Customer - Attempt to login with incorrect email address
    [Documentation]  The customer cannot login with incorrect credentials
    [Tags]  skip
    VignetteApp.Navigate to the home page
    VignetteApp.Navigate to the "Log in" page
    VignetteApp.Populate the "Email Address" field with incorrect address
    VignetteApp.Populate the "Password" field
    VignetteApp.Click the "Log in" button
    VignetteApp.Verify unsuccessful login

Customer - Attempt to login with incorrect password
    [Documentation]  The customer cannot login with incorrect credentials
    [Tags]  current
    VignetteApp.Navigate to the home page
    VignetteApp.Navigate to the "Log in" page
    VignetteApp.Populate the "Email Address" field
    VignetteApp.Populate the "Password" field with incorrect password
    VignetteApp.Click the "Log in" button
    VignetteApp.Verify unsuccessful login