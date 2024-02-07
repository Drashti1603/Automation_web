*** Settings ***
Resource    ../Locators/Filters.robot
Resource    ../Locators/URL.robot
Resource    ../Locators/Searching.robot
Resource    ../Keywords/Apply_Filters and Add_to_cart.robot
Resource    ../Keywords/Login.robot
Resource    ../Keywords/Search.robot
Resource    ../Python/Keywords/Shop_product(steps).py
Resource    ../Python/Keywords/price.py

*** Test Cases ***
Search on Amazon
    Search on Amazon
    Apply_Filters and Add_to_cart
    Login