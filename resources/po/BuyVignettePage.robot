*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables.robot
Resource  ../CommonMethods.robot

*** Keywords ***
Find and click the "Light vehicle and light truck" vignette valid period
    wait until page contains element  ${BUY_VIGNETTE_LIGHT_VEHICLE_VALID_PERIOD}
    click element  ${BUY_VIGNETTE_LIGHT_VEHICLE_VALID_PERIOD}

Find the "Country" dropdown menu, click it and select an option
    CommonMethods.Locate a drop-down menu and select an option
    ...  ${BUY_VIGNETTE_COUNTRY_DROP_DOWN_MENU}  ${BUY_VIGNETTE_COUNTRY_SELECTION}

Focus and populate the "Plate Number" field with the plate string
    ${randomly_generated_plate} =  CustomerProfile.Generate a plate number
    wait until page contains element  ${BUY_VIGNETTE_PLATE_NUMBER_FIELD}
    click element  ${BUY_VIGNETTE_PLATE_NUMBER_FIELD}
    input text  ${BUY_VIGNETTE_PLATE_NUMBER_FIELD}  ${randomly_generated_plate}

Count the number of configured vignettes in the shopping cart
    #page should contain element  ${BUY_VIGNETTE_CART_MULTIPLE_VIGNETTES}  limit=4
    ${vehicle_count} =  get element count  ${BUY_VIGNETTE_CART_MULTIPLE_VIGNETTES}
    should be equal as integers  ${vehicle_count}  2