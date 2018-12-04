*** Settings ***
Resource  ./po/LandingPage.robot
Resource  ./po/LoginPage.robot
Resource  ./po/CustomerProfile.robot
Resource  ./po/BuyVignettePage.robot
Resource  ./VignetteApp.robot

*** Keywords ***
Begin test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End test
    close all browsers

Scroll down the page
    scroll element into view  ${LANDING_WHOLE_FOOTER}

Find and click an element
    [Arguments]  ${element_to_be_found_and_clicked}
    wait until page contains element  ${element_to_be_found_and_clicked}
    click element  ${element_to_be_found_and_clicked}

Verify that an element is present on the page
    [Arguments]  @{list_of_elements_to_be_verified}

   :FOR  ${element_to_be_verified}  IN  @{list_of_elements_to_be_verified}
   \  wait until page contains element  ${element_to_be_verified}

Focus a text field and populate it
    [Arguments]  ${text_field_to_be_focused}  ${value_to_be_entered_into_the_text_field}
    wait until page contains element  ${text_field_to_be_focused}
    input text  ${text_field_to_be_focused}  ${value_to_be_entered_into_the_text_field}

Locate a drop-down menu and select an option
    [Arguments]  ${drop_down_menu_to_be_found}  ${option_from_the_menu_to_be_selected}
    wait until page contains element  ${drop_down_menu_to_be_found}
    click element  ${drop_down_menu_to_be_found}
    click element  ${option_from_the_menu_to_be_selected}

Locate a notification message and verify its content
    [Arguments]  ${notification_selector}  ${notification_content_to_be_verified}
    Verify that an element is present on the page
    ...  ${notification_selector}
    ${notification_content} =  get text  ${notification_selector}
    should be equal as strings  ${notification_content}  ${notification_content_to_be_verified}

Login an existing user to their profile
    VignetteApp.Navigate to the home page
    VignetteApp.Navigate to the "Log in" page
    VignetteApp.Populate the "Email Address" field
    VignetteApp.Populate the "Password" field
    VignetteApp.Click the "Log in" button
    VignetteApp.Verify that the user is redirected to their profile

Remove a vehicle from the table of vehicles
    VignetteApp.Select the check-box of the first vehicle in the table
    VignetteApp.Click "Remove Selected" button
    VignetteApp.Confirm the action from the popup message
    VignetteApp.Verify that the vehicle has been removed