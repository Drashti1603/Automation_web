*** Settings ***
Resource    ../Locators/Filters.robot
Resource    ../Locators/URL.robot
Resource    ../Locators/Searching.robot
Library     SeleniumLibrary     timeout=5500
Library     ../Python/Keywords/price.py
Library     ../Python/Keywords/Shop_product(steps).py

*** Keywords ***
Apply_Filters and Add_to_cart
    Go To                            ${Deliver_today} 
    Execute JavaScript               window.scrollBy(0,500)  
    input_prices_and_go              ${Low_price}              ${High_price}    ${Go}
    Execute JavaScript               window.scrollBy(0,500)    
    #Go To                            ${All_dis}
    Wait Until Element Is Visible    ${Size}          timeout=20s
    Execute JavaScript               window.scrollBy(0,500)    
    Click Element                    ${Size}
    Click Element                    ${Product1} 
    ${tab2}                          Switch Window    NEW
    Execute JavaScript               window.scrollBy(0,350)
    Perform Checkout                 ${Add_to_cart}            ${Go_to_cart}    ${Check-out}
