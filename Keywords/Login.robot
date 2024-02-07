*** Settings ***
Resource    ../Locators/Filters.robot
Resource    ../Locators/URL.robot
Resource    ../Locators/Searching.robot

*** Keywords ***
Login
    Wait Until Element Is Visible    ${Sign-in}     timeout=5s
    Input Text                       ${Email}       drashti.chetta2002@gmail.com
    Click Element                    ${Continue} 
    Input Password                   ${Password}    Drashti*123
    Click Element                    ${Sign-in-submit} 
    Go To                            ${Go_to_cart}