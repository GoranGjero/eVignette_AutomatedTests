*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_CAR_OPTION} =  xpath=//*[@id="projects-section"]/div[2]/div[1]/div/a
${LANDING_TRAILER_OPTION} =  xpath=//*[@id="projects-section"]/div[2]/div[2]/div/a
${LANDING_HGV_OPTION} =  xpath=//*[@id="projects-section"]/div[2]/div[3]/div/a

${LANDING_FAQ_SECTION} =  xpath=/html/body/main/section[2]/div/div[1]/h2

${LANDING_WHOLE_FOOTER} =  xpath=/html/body/main/footer

${LANDING_LOGIN_BUTTON} =  xpath=//*[@id="navBar"]/ul[2]/li[2]/a

*** Keywords ***
### "Vehicle Category" options
Navigate to
    Go To  ${INITIAL_URL}

Validate the "Car" option
    wait until page contains element  ${LANDING_CAR_OPTION}

Validate the "Trailer" option
    wait until page contains element  ${LANDING_TRAILER_OPTION}

Validate "HGV" option
    wait until page contains element  ${LANDING_HGV_OPTION}

### FAQ section
Validate the "FAQ" section of the page
    wait until page contains element  ${LANDING_FAQ_SECTION}
    ${faq_text} =  get text  ${LANDING_FAQ_SECTION}
    should be equal as strings  ${faq_text}  HAVE SOME PROBLEMS?  ignore_case=true

### Footer section
Validate the whole footer of the page
    wait until page contains element  ${LANDING_WHOLE_FOOTER}

Validate the "eVignette purchase" section
    wait until page contains  Покупка на еВинетка

Validate the "vinetki.bg" section
    wait until page contains  vinetki.bg

Validate the "contact us" section
    wait until page contains  Връзка с нас

Click the "Log in" button
    click link  ${LANDING_LOGIN_BUTTON}