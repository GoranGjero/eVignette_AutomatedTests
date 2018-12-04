*** Variables ***
### General
${BROWSER} =  ff
${INITIAL_URL} =  http://vinetki.melontech.com/

${GENERAL_CLEAR_CART_CONFIRMATION} =  xpath=//button[contains(text(),'Потвърждение')]

### Landing Page
${LANDING_CAR_OPTION} =  xpath=//div[@class='row no-gutters g-mx-minus-10 step-1']//div[2]//div[1]//a[1]
${LANDING_TRAILER_OPTION} =  xpath=//div[@class='row no-gutters g-mx-minus-10 step-1']//div[4]//div[1]//a[1]
${LANDING_HGV_OPTION} =  xpath=//div[@class='row no-gutters g-mx-minus-10 step-1']//div[3]//div[1]//a[1]

${LANDING_CATEGORY_K1} =  xpath=//button[contains(text(),'Категория 1 ≥ 12т')]
${LANDING_EMISSION_CLASS} =  xpath=//button[contains(text(),'Euro III, IV, V, EEV и по-висока')]
${LANDING_VIGNETTE_VALID_PERIOD} =  xpath=//span[contains(text(),'СЕДМИЧНА')]

${LANDING_FAQ_SECTION} =  xpath=//h2[@class='mb-4']
${LANDING_FAQ_VALUE} =  Често задавани въпроси
${LANDING_WHOLE_FOOTER} =  xpath=/html/body/main/footer
${LANDING_LOGIN_BUTTON} =  xpath=//a[contains(text(),'Вход')]

### Footer sections
${FOOTER_VIGNETTE_PURCHASE} =  Покупка на еВинетка
${FOOTER_VINETKI_BG} =  vinetki.bg
${FOOTER_CONTACT_US} =  Връзка с нас

### Login Page
${LOGIN_EMAIL_FIELD} =  xpath=//input[@id='Email']
${LOGIN_PASSWORD_FIELD} =  xpath=//input[@id='Password']
${CUSTOMER_EMAIL_ADDRESS} =  ggjeroski@melontech.com
${CUSTOMER_PASSWORD} =  test123

${CUSTOMER_INCORRECT_EMAIL} =  test@test.com
${CUSTOMER_INCORRECT_PASSWORD} =  testPassword
${LOGIN_ERROR_NOTIFICATION} =  xpath=//span[@class='media-body align-self-center']

### Customer Profile
${CUSTOMER_PROFILE} =  xpath=//*[@id="profile-dropdown-invoker-2"]
${SHOPPING_CART} =  id=shopping-cart

${CUSTOMER_MY_PROFILE_TAB} =  xpath=//li[@class='nav-item']//a[contains(@class,'nav-link')][contains(text(),'Моят Профил')]
${CUSTOMER_MY_VEHICLES_TAB} =  xpath=//ul[@class='nav u-nav-v1-1 g-mb-20']//a[contains(@class,'nav-link')][contains(text(),'Моите превозни средства')]

${CUSTOMER_FIRST_NAME_TEXT_FIELD} =  xpath=//input[@id='FirstName']
${CUSTOMER_LAST_NAME_TEXT_FIELD} =  xpath=//input[@id='LastName']

${CUSTOMER_ADD_VEHICLE_BUTTON} =  xpath=//a[contains(text(),'Добави превозно средство')]
${CUSTOMER_FRIENDLY_NAME_TEXT_FIELD} =  xpath=//input[@id='Name']
${CUSTOMER_TYPE_DROPDOWN_MENU} =  xpath=//select[@id='TypeID']
${CUSTOMER_TYPE_LIGHT_VEHICLE_SELECTION} =  xpath=//select[@id='TypeID']/option[2]
${CUSTOMER_TYPE_TRAILER_CARAVAN_SELECTION} =  xpath=//select[@id='TypeID']/option[3]
${CUSTOMER_TYPE_HGV_SELECTION} =  xpath=//select[@id='TypeID']/option[4]

${CUSTOMER_CATEGORY_DROPDOWN_MENU} =  xpath=//select[@id='CategoryID']
${CUSTOMER_CATEGORY_SELECTION} =  xpath=//select[@id='CategoryID']/option[2]

${CUSTOMER_EMISSION_DROPDOWN_MENU} =  xpath=//select[@id='EmissionCategoryID']
${CUSTOMER_EMISSION_SELECTION} =  xpath=//select[@id='EmissionCategoryID']/option[2]

${CUSTOMER_SAVE_BUTTON} =  xpath=//button[@type='submit']

${CUSTOMER_CORRECT_FIRST_NAME} =  Goran
${CUSTOMER_CORRECT_LAST_NAME} =  Gjeroski

${CUSTOMER_UPDATED_FIRST_NAME} =  Test
${CUSTOMER_UPDATED_LAST_NAME} =  User

${CUSTOMER_VEHICLE_FRIENDLY_NAME} =  Car Friendly Name

${CUSTOMER_VEHICLE_ADDED_NOTIFICATION_SELECTOR} =  xpath=//div[@class='media']
${CUSTOMER_VEHICLE_ADDED_NOTIFICATION_CONTENT} =  Превозното средство беше успешно запазено.

${CUSTOMER_NOTIFICATION_SELECTOR} =  xpath=//span[@class='media-body align-self-center white-space-pre-line']
${CUSTOMER_SUCCESS_NOTIFICATION_CONTENT} =  Вашият профил беше успешно редактиран.
${CUSTOMER_VEHICLE_REMOVED_NOTIFICATION_CONTENT} =  1 превозни средства бяха изтрити.
${CUSTOMER_FIRST_VEHICLE_CHECKBOX} =  css=div.container div.row.cart-profile div.col-lg-8.cust-col div.g-brd-around.g-brd-gray-light-v4.g-pa-25.g-mb-30 div.table-responsive.g-my-20.g-font-size-12:nth-child(2) table.table:nth-child(3) tbody:nth-child(2) tr:nth-child(1) td.g-valign-middle:nth-child(1) label.u-check.g-pl-10:nth-child(2) > div.u-check-icon-checkbox-v4.g-absolute-centered--y.g-left-0

${CUSTOMER_REMOVE_SELECTED_VEHICLES} =  xpath=//button[contains(text(),'Изтриване на избраните')]
${CUSTOMER_CONFIRM_VEHICLE_REMOVAL} =  xpath=//button[contains(text(),'Потвърждение')]

### Buy vignette page
${BUY_VIGNETTE_LIGHT_VEHICLE_BUTTON} =  xpath=//section//div[@class='row']//div[1]//div[1]//a[1]
${BUY_VUGNETTE_HGV_BUTTON} =  xpath=//div[@class='row']//div[2]//div[1]//a[1]
${BUY_VIGNETTE_CARAVAN_TRAILER_BUTTON} =  xpath=//div[@class='row']//div[3]//div[1]//a[1]

${BUY_VIGNETTE_LIGHT_VEHICLE_VALID_PERIOD} =  css=div.col-md-4:nth-child(2) > button:nth-child(1)
${BUY_VIGNETTE_HGV_VALID_PERIOD} =  xpath=
${BUY_VIGNETTE_CARAVAN_TRAILER_VALID_PERIOD} =  xpath=

${BUY_VIGNETTE_COUNTRY_DROP_DOWN_MENU} =  xpath=//select[@id='CountryID']
${BUY_VIGNETTE_COUNTRY_SELECTION} =  xpath=//select[@id='CountryID']/option[12]

${BUY_VIGNETTE_PLATE_NUMBER_FIELD} =  xpath=//input[@id='PlateNumber']
${BUY_VIGNETTE_PLATE_NUMBER_VALUE} =  AB-123-CD

${BUY_VIGNETTE_ADD_MORE_VIGNETTES_BUTTON} =  css=input.u-btn-outline-primary

${BUY_VIGNETTE_CONFIGURED_VEHICLE_PLATE} =  xpath=//strong[@class='p-number']
${BUY_VIGNETTE_CONFIGURED_VEHICLE_PRICE} =  xpath=//span[@class='cart-price']
${BUY_VIGNETTE_CART_TOTAL_PRICE} =  xpath=//div[@class='col']
${BUY_VIGNETTE_CART_MULTIPLE_VIGNETTES} =  xpath=//div[@class='u-basket__product g-brd-none g-pa-0 no-gutters g-mt-20']//a//i
${BUY_VIGNETTE_CLEAR_CART} =  xpath=//a[@class='btn btn-xl btn-block u-btn-outline-primary g-mb-10']