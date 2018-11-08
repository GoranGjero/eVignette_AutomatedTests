*** Settings ***
Resource  ./po/LandingPage.robot
Resource  ./po/LoginPage.robot
Resource  ./po/CustomerProfile.robot


*** Variables ***

*** Keywords ***
Navigate to the home page
    LandingPage.Navigate to

Verify that the "Vehicle Category" options are present
    LandingPage.Validate the "Car" option
    LandingPage.Validate the "Trailer" option
    LandingPage.Validate "HGV" option

Verify that the "FAQ" section is present
    LandingPage.Validate the "FAQ" section of the page

Verify that the footer is present
    LandingPage.Validate the whole footer of the page
    LandingPage.Validate the "eVignette purchase" section
    LandingPage.Validate the "vinetki.bg" section
    LandingPage.Validate the "contact us" section

Navigate to the "Log in" page
    LandingPage.Click the "Log in" button

Populate the "Email Address" field
    LoginPage.Focus and populate the "Email Address" field

Populate the "Password" field
    LoginPage.Focus and populate the "Password" field

Click the "Log in" button
    LoginPage.Find and click the "Log in" button

Verify that the user is redirected to their profile
    CustomerProfile.Validate the customer profile

Populate the "Email Address" field with incorrect address
    LoginPage.Focus and populate the "Email Address" field with incorrect email address

Populate the "Password" field with incorrect password
    LoginPage.Focus and populate the "Password" field with incorrect password

Verify unsuccessful login
    LoginPage.Detect and verify the error notification