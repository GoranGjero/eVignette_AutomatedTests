*** Settings ***
Documentation  The suite contains the tests, that are supposed to verify the registered customer options
Resource  ../resources/VignetteApp.robot
Resource  ../resources/CommonMethods.robot
Resource  ../resources/Variables.robot

Test Setup  Begin test
Test Teardown  End test

*** Test Cases ***
A registered customer is able to change their details
    [Documentation]  A customer that has logged in to their profile, can change their details at any time
    [Tags]  skip
    CommonMethods.Login an existing user to their profile

    VignetteApp.Click the "My Profile" tab
    VignetteApp.Populate the "First Name" field with a new value
    VignetteApp.Populate the "Last Name" field with a new value
    VignetteApp.Click the "Save" button

    VignetteApp.Verify the success notification

    VignetteApp.Verify that the new first name is saved
    VignetteApp.Verify that the new last name is saved
    VignetteApp.Set the first name to its initial value
    VignetteApp.Set the last name to its initial value

    VignetteApp.Click the "Save" button
    VignetteApp.Verify the success notification

A registered customer is able to add and remove "Light Vehicle And Light Truck" vehicle
    [Documentation]  A customer that has logged to their profile can add and remove "LV&LT" vehicles to and from the list
    [Tags]  skip
    # Login the user to their profile
    CommonMethods.Login an existing user to their profile

    # Add a new vehicle into the table
    VignetteApp.Click the "My Vehicles" tab
    VignetteApp.Click the "Add Vehicle" button
    VignetteApp.Set the "Friendly Name" value
    VignetteApp.Select the "Light Vehicle or Light Truck" vehicle type
    VignetteApp.Populate the "Plate Number" field
    VignetteApp.Click the "Save" button
    sleep  3s
    VignetteApp.Verify the newly added vehicle

    #Remove the newly added vehicle from the table
    CommonMethods.Remove a vehicle from the table of vehicles

A registered customer is able to add and remove "HGV or Bus" vehicle
    [Documentation]  A customer that has logged to their profile can add and remove "HGV or Bus" vehicles to and from the list
    [Tags]  skip
    # Login the user to their profile
    CommonMethods.Login an existing user to their profile

    # Add a new vehicle into the table
    VignetteApp.Click the "My Vehicles" tab
    VignetteApp.Click the "Add Vehicle" button
    VignetteApp.Set the "Friendly Name" value
    VignetteApp.Select the "HGV or Bus" vehicle type
    VignetteApp.Select the "HGV or Bus" vehicle category
    VignetteApp.Select the "Emission Category" option
    VignetteApp.Populate the "Plate Number" field
    VignetteApp.Click the "Save" button
    sleep  3s
    VignetteApp.Verify the newly added vehicle

    #Remove the newly added vehicle from the table
    CommonMethods.Remove a vehicle from the table of vehicles

A registered customer is able to add and remove "Trailer / Caravan" vehicle
    [Documentation]  A customer that has logged to their profile can add and remove "Trailer / Caravan" vehicles to and from the list
    [Tags]  current
    # Login the user to their profile
    CommonMethods.Login an existing user to their profile

    # Add a new vehicle into the table
    VignetteApp.Click the "My Vehicles" tab
    VignetteApp.Click the "Add Vehicle" button
    VignetteApp.Set the "Friendly Name" value
    VignetteApp.Select the "Trailer / Caravan" vehicle type
    VignetteApp.Populate the "Plate Number" field
    VignetteApp.Click the "Save" button
    sleep  3s
    VignetteApp.Verify the newly added vehicle

    #Remove the newly added vehicle from the table
    CommonMethods.Remove a vehicle from the table of vehicles