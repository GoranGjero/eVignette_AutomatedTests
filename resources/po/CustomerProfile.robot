*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CUSTOMER_PROFILE} =  xpath=//*[@id="navBar"]/a
${SHOPPING_CART} =  id=shopping-cart

*** Keywords ***
Validate the customer profile
    wait until page contains element  ${CUSTOMER_PROFILE}
    wait until page contains element  ${SHOPPING_CART}