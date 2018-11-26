*** Settings ***
Resource  ./po/LandingPage.robot
Resource  ./po/LoginPage.robot
Resource  ./po/CustomerProfile.robot
Resource  ./po/BuyVignettePage.robot

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