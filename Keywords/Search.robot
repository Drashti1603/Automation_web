*** Settings ***
Resource    ../Locators/Filters.robot
Resource    ../Locators/URL.robot
Resource    ../Locators/Searching.robot

*** Keywords ***
Search on Amazon
    Open Browser             ${HOMEPAGE}     Chrome
    Maximize Browser Window
    Input Text               ${Search}       shoes asian
    Click Element            ${Search_Button} 
    Go To                    ${searchResultURL}
    Execute JavaScript       window.scrollBy(0,500)




