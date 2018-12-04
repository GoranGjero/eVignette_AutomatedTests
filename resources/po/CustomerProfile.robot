*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  ../Variables.robot

*** Keywords ***
Generate a plate number
    ${random_plate_number} =  generate random string  9  [NUMBERS][UPPER]
    [Return]  ${random_plate_number}