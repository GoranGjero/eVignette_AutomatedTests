*** Settings ***
Resource  ./po/LandingPage.robot
Resource  ./po/LoginPage.robot
Resource  ./po/CustomerProfile.robot
Resource  ./po/BuyVignettePage.robot
Resource  ./CommonMethods.robot

*** Keywords ***
Navigate to the home page
    LandingPage.Navigate to

Verify that the "Vehicle Category" options are present
    CommonMethods.Verify that an element is present on the page
    ...  ${LANDING_CAR_OPTION}
    ...  ${LANDING_TRAILER_OPTION}
    ...  ${LANDING_HGV_OPTION}


Verify that the "FAQ" section is present
    LandingPage.Validate the "FAQ" section of the page

Verify that the footer is present
    LandingPage.Validate the whole footer of the page

    @{footer_sections_list} =  create list
    ...  ${FOOTER_VIGNETTE_PURCHASE}
    ...  ${FOOTER_VINETKI_BG}
    ...  ${FOOTER_CONTACT_US}

    :FOR  ${footer_section}  IN  @{footer_sections_list}
    \  LandingPage.Validate the section of the footer  ${footer_section}

Navigate to the "Log in" page
    LandingPage.Click the "Log in" button

Populate the "Email Address" field
    CommonMethods.Focus a text field and populate it
    ...  ${LOGIN_EMAIL_FIELD}  ${CUSTOMER_EMAIL_ADDRESS}

Populate the "Password" field
    CommonMethods.Focus a text field and populate it
    ...  ${LOGIN_PASSWORD_FIELD}  ${CUSTOMER_PASSWORD}

Click the "Log in" button
    LoginPage.Find and click the "Log in" button

Verify that the user is redirected to their profile
    CommonMethods.Verify that an element is present on the page
    ...  ${CUSTOMER_PROFILE}
    ...  ${SHOPPING_CART}

Populate the "Email Address" field with incorrect address
    CommonMethods.Focus a text field and populate it
    ...  ${LOGIN_EMAIL_FIELD}  ${CUSTOMER_INCORRECT_EMAIL}

Populate the "Password" field with incorrect password
    CommonMethods.Focus a text field and populate it
    ...  ${LOGIN_PASSWORD_FIELD}  ${CUSTOMER_INCORRECT_PASSWORD}

Verify unsuccessful login
    LoginPage.Detect and verify the error notification

Select "Light vehicle and light truck" type from the landing page
    CommonMethods.Find and click an element
    ...  ${LANDING_CAR_OPTION}

Click the "Country" dropdown menu and select a country
    BuyVignettePage.Find the "Country" dropdown menu, click it and select an option

Populate the "Plate Number" field
    BuyVignettePage.Focus and populate the "Plate Number" field with the plate string

Click the "Add more eVignettes" button
    CommonMethods.Find and click an element
    ...  ${BUY_VIGNETTE_ADD_MORE_VIGNETTES_BUTTON}

Verify that the user is redirected to the beginning of the purchase process
    CommonMethods.Verify that an element is present on the page
    ...  ${BUY_VIGNETTE_LIGHT_VEHICLE_BUTTON}
    ...  ${BUY_VUGNETTE_HGV_BUTTON}
    ...  ${BUY_VIGNETTE_CARAVAN_TRAILER_BUTTON}

Verify that the shopping cart is present
    CommonMethods.Verify that an element is present on the page
    ...  ${SHOPPING_CART}

Verify that the shopping cart contains the configured vignette
    CommonMethods.Verify that an element is present on the page
    ...  ${BUY_VIGNETTE_CONFIGURED_VEHICLE_PLATE}
    ...  ${BUY_VIGNETTE_CONFIGURED_VEHICLE_PRICE}
    ...  ${BUY_VIGNETTE_CART_TOTAL_PRICE}

Select "HGV or bus" type from the landing page
    CommonMethods.Find and click an element
    ...  ${LANDING_HGV_OPTION}

Choose the vehicle category
    CommonMethods.Find and click an element
    ...  ${LANDING_CATEGORY_K1}

Choose the emission class
    CommonMethods.Find and click an element
    ...  ${LANDING_EMISSION_CLASS}

Choose the vignette valid period
    CommonMethods.Find and click an element
    ...  ${LANDING_VIGNETTE_VALID_PERIOD}

Select the "Trailer or caravan" type from the landing page
    CommonMethods.Find and click an element
    ...  ${LANDING_TRAILER_OPTION}

Select "Light vehicle and light truck" type from the "Buy Vignette" page
    CommonMethods.Find and click an element
    ...  ${BUY_VIGNETTE_LIGHT_VEHICLE_BUTTON}

Verify that the shopping cart contains multiple vignettes
    BuyVignettePage.Count the number of configured vignettes in the shopping cart

Empty the shopping cart
    CommonMethods.Find and click an element
    ...  ${BUY_VIGNETTE_CLEAR_CART}
    CommonMethods.Find and click an element
    ...  ${GENERAL_CLEAR_CART_CONFIRMATION}

Click the "My Profile" tab
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_MY_PROFILE_TAB}

Populate the "First Name" field with a new value
    CommonMethods.Focus a text field and populate it
    ...  ${CUSTOMER_FIRST_NAME_TEXT_FIELD}  ${CUSTOMER_UPDATED_FIRST_NAME}

Populate the "Last Name" field with a new value
    CommonMethods.Focus a text field and populate it
    ...  ${CUSTOMER_LAST_NAME_TEXT_FIELD}  ${CUSTOMER_UPDATED_LAST_NAME}

Click the "Save" button
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_SAVE_BUTTON}

Verify the success notification
    CommonMethods.Locate a notification message and verify its content
    ...  ${CUSTOMER_NOTIFICATION_SELECTOR}  ${CUSTOMER_SUCCESS_NOTIFICATION_CONTENT}

Verify that the new first name is saved
    textfield value should be
    ...  ${CUSTOMER_FIRST_NAME_TEXT_FIELD}  ${CUSTOMER_UPDATED_FIRST_NAME}

Verify that the new last name is saved
    textfield value should be
    ...  ${CUSTOMER_LAST_NAME_TEXT_FIELD}  ${CUSTOMER_UPDATED_LAST_NAME}

Set the first name to its initial value
    CommonMethods.Focus a text field and populate it
    ...  ${CUSTOMER_FIRST_NAME_TEXT_FIELD}  ${CUSTOMER_CORRECT_FIRST_NAME}

Set the last name to its initial value
    CommonMethods.Focus a text field and populate it
    ...  ${CUSTOMER_LAST_NAME_TEXT_FIELD}  ${CUSTOMER_CORRECT_LAST_NAME}

Click the "My Vehicles" tab
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_MY_VEHICLES_TAB}

Click the "Add Vehicle" button
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_ADD_VEHICLE_BUTTON}

Set the "Friendly Name" value
    CommonMethods.Focus a text field and populate it
    ...  ${CUSTOMER_FRIENDLY_NAME_TEXT_FIELD}  ${CUSTOMER_VEHICLE_FRIENDLY_NAME}

Select the "Light Vehicle or Light Truck" vehicle type
    CommonMethods.Locate a drop-down menu and select an option
    ...  ${CUSTOMER_TYPE_DROPDOWN_MENU}  ${CUSTOMER_TYPE_LIGHT_VEHICLE_SELECTION}

Select the "Trailer / Caravan" vehicle type
    CommonMethods.Locate a drop-down menu and select an option
    ...  ${CUSTOMER_TYPE_DROPDOWN_MENU}  ${CUSTOMER_TYPE_TRAILER_CARAVAN_SELECTION}

Select the "HGV or Bus" vehicle type
    CommonMethods.Locate a drop-down menu and select an option
    ...  ${CUSTOMER_TYPE_DROPDOWN_MENU}  ${CUSTOMER_TYPE_HGV_SELECTION}

Select the "HGV or Bus" vehicle category
    CommonMethods.Locate a drop-down menu and select an option
    ...  ${CUSTOMER_CATEGORY_DROPDOWN_MENU}  ${CUSTOMER_CATEGORY_SELECTION}

Select the "Emission Category" option
    CommonMethods.Locate a drop-down menu and select an option
    ...  ${CUSTOMER_EMISSION_DROPDOWN_MENU}  ${CUSTOMER_EMISSION_SELECTION}

Verify the newly added vehicle
    CommonMethods.Locate a notification message and verify its content
    ...  ${CUSTOMER_VEHICLE_ADDED_NOTIFICATION_SELECTOR}  ${CUSTOMER_VEHICLE_ADDED_NOTIFICATION_CONTENT}

Select the check-box of the first vehicle in the table
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_FIRST_VEHICLE_CHECKBOX}

Click "Remove Selected" button
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_REMOVE_SELECTED_VEHICLES}

Confirm the action from the popup message
    CommonMethods.Find and click an element
    ...  ${CUSTOMER_CONFIRM_VEHICLE_REMOVAL}

Verify that the vehicle has been removed
    CommonMethods.Locate a notification message and verify its content
    ...  ${CUSTOMER_NOTIFICATION_SELECTOR}  ${CUSTOMER_VEHICLE_REMOVED_NOTIFICATION_CONTENT}