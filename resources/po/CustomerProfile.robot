*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CUSTOMER_PROFILE} =  xpath=//*[@id="profile-dropdown-invoker-2"]
${SHOPPING_CART} =  id=shopping-cart

*** Keywords ***
Validate the customer profile
    wait until page contains element  ${CUSTOMER_PROFILE}
    wait until page contains element  ${SHOPPING_CART}