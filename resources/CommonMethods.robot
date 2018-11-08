*** Settings ***
Resource  ./po/LandingPage.robot

*** Variables ***


*** Keywords ***
Begin test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End test
    close all browsers

Scroll down the page
    scroll element into view  ${LANDING_WHOLE_FOOTER}