*** Variables ***
### General
${BROWSER} =  gc
${INITIAL_URL} =  http://vinetki.melontech.com/

${GENERAL_CLEAR_CART_CONFIRMATION} =  xpath=//button[contains(text(),'Потвърждение')]

### Landing Page
${LANDING_CAR_OPTION} =  xpath=//div[@class='row no-gutters g-mx-minus-10 step-1']//div[2]//div[1]//a[1]
${LANDING_TRAILER_OPTION} =  xpath=//div[@class='row no-gutters g-mx-minus-10 step-1']//div[4]//div[1]//a[1]
${LANDING_HGV_OPTION} =  xpath=//div[@class='row no-gutters g-mx-minus-10 step-1']//div[3]//div[1]//a[1]

${LANDING_CATEGORY_K1} =  xpath=//button[contains(text(),'Категория 1 ≥ 12т')]
${LANDING_EMISSION_CLASS} =  xpath=//button[contains(text(),'Euro III, IV, V, EEV и по-висока')]
${LANDING_VIGNETTE_VALID_PERIOD} =  xpath=//div[contains(@class,'row justify-content-center text-center')]//div[2]//button[1]

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

### Buy vignette page
${BUY_VIGNETTE_LIGHT_VEHICLE_BUTTON} =  xpath=//section//div[@class='row']//div[1]//div[1]//a[1]
${BUY_VUGNETTE_HGV_BUTTON} =  xpath=//div[@class='row']//div[2]//div[1]//a[1]
${BUY_VIGNETTE_CARAVAN_TRAILER_BUTTON} =  xpath=//div[@class='row']//div[3]//div[1]//a[1]

${BUY_VIGNETTE_LIGHT_VEHICLE_VALID_PERIOD} =  css=div.col-md-4:nth-child(2) > button:nth-child(1)
${BUY_VIGNETTE_HGV_VALID_PERIOD} =  xpath=
${BUY_VIGNETTE_CARAVAN_TRAILER_VALID_PERIOD} =  xpath=

${BUY_VIGNETTE_COUNTRY_DROP_DOWN_MENU} =  xpath=//select[@id='CountryID']
${BUY_VIGNETTE_COUNTRY_SELECTION} =  xpath=//select[@id='CountryID']/option[81]

${BUY_VIGNETTE_PLATE_NUMBER_FIELD} =  xpath=//input[@id='PlateNumber']
${BUY_VIGNETTE_PLATE_NUMBER_VALUE} =  AB-123-CD

${BUY_VIGNETTE_ADD_MORE_VIGNETTES_BUTTON} =  css=input.u-btn-outline-primary

${BUY_VIGNETTE_CONFIGURED_VEHICLE_PLATE} =  xpath=//div[@class='float-left category']
${BUY_VIGNETTE_CONFIGURED_VEHICLE_PRICE} =  xpath=//div[contains(@class,'col-lg-5 col-md-3 col-5 text-right')]
${BUY_VIGNETTE_CART_TOTAL_PRICE} =  xpath=//div[@class='col']
${BUY_VIGNETTE_CART_MULTIPLE_VIGNETTES} =  xpath=//div[@class='u-basket__product g-brd-none g-pa-0 no-gutters g-mt-20']//a//i
${BUY_VIGNETTE_CLEAR_CART} =  xpath=//a[@class='btn btn-xl btn-block u-btn-outline-primary g-mb-10']