*** Settings ***
Documentation  The suite contains the general tests
Resource  ../resources/VignetteApp.robot
Resource  ../resources/CommonMethods.robot

Test Setup  Begin test
Test Teardown  End test

*** Test Cases ***
The customer is able to buy "Light vehicle and light truck" vignette without register
    [Documentation]  An unregistered user is able to configure "Light vehicle and light truck" vignette and add it to the cart
    [Tags]  skip
    VignetteApp.Navigate to the home page
    VignetteApp.Verify that the "Vehicle Category" options are present
    VignetteApp.Select "Light vehicle and light truck" type from the landing page
    VignetteApp.Choose the vignette valid period

    VignetteApp.Click the "Country" dropdown menu and select a country
    VignetteApp.Populate the "Plate Number" field

    VignetteApp.Click the "Add more eVignettes" button

    # The user is redirected to the beginning of the purchase process
    VignetteApp.Verify that the user is redirected to the beginning of the purchase process
    VignetteApp.Verify that the shopping cart is present
    VignetteApp.Verify that the shopping cart contains the configured vignette
    VignetteApp.Empty the shopping cart


The customer is able to buy "HGV or bus" vignette without register
    [Documentation]  An unregistered user is able to configure "HGV or bus" vignette and add it to the cart
    [Tags]  skip
    VignetteApp.Navigate to the home page
    VignetteApp.Verify that the "Vehicle Category" options are present
    VignetteApp.Select "HGV or bus" type from the landing page
    VignetteApp.Choose the vehicle category
    VignetteApp.Choose the emission class
    VignetteApp.Choose the vignette valid period

    VignetteApp.Click the "Country" dropdown menu and select a country
    VignetteApp.Populate the "Plate Number" field

    VignetteApp.Click the "Add more eVignettes" button

    # The user is redirected to the beginning of the purchase process
    VignetteApp.Verify that the user is redirected to the beginning of the purchase process
    VignetteApp.Verify that the shopping cart is present
    VignetteApp.Verify that the shopping cart contains the configured vignette
    VignetteApp.Empty the shopping cart

The customer is able to buy "Trailer or caravan" vignette without register
    [Documentation]  An unregistered user is able to configure "Trailer or caravan" vignette and add it to the cart
    [Tags]  skip
    VignetteApp.Navigate to the home page

    VignetteApp.Verify that the "Vehicle Category" options are present
    VignetteApp.Select the "Trailer or caravan" type from the landing page
    VignetteApp.Choose the vignette valid period

    VignetteApp.Click the "Country" dropdown menu and select a country
    VignetteApp.Populate the "Plate Number" field

    VignetteApp.Click the "Add more eVignettes" button

    # The user is redirected to the beginning of the purchase process
    VignetteApp.Verify that the user is redirected to the beginning of the purchase process
    VignetteApp.Verify that the shopping cart is present
    VignetteApp.Verify that the shopping cart contains the configured vignette
    VignetteApp.Empty the shopping cart

The customer is able to add multiple vehicles during the purchase process
    [Documentation]  An unregistered user is able to add multiple vignettes to the cart
    [Tags]  current
    VignetteApp.Navigate to the home page
    VignetteApp.Verify that the "Vehicle Category" options are present
    VignetteApp.Select "Light vehicle and light truck" type from the landing page
    VignetteApp.Choose the vignette valid period

    VignetteApp.Click the "Country" dropdown menu and select a country
    VignetteApp.Populate the "Plate Number" field

    VignetteApp.Click the "Add more eVignettes" button
    VignetteApp.Verify that the shopping cart is present

    # The user is redirected to the beginning of the purchase process
    VignetteApp.Select "Light vehicle and light truck" type from the "Buy Vignette" page
    VignetteApp.Choose the vignette valid period

    VignetteApp.Click the "Country" dropdown menu and select a country
    VignetteApp.Populate the "Plate Number" field

    VignetteApp.Click the "Add more eVignettes" button

    sleep  2s
    VignetteApp.Verify that the shopping cart contains multiple vignettes
    VignetteApp.Empty the shopping cart
    sleep  3s