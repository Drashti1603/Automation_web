*** Settings ***
Library    SeleniumLibrary     timeout=5500

*** Variables ***

${Search}            //*[@id="twotabsearchtextbox"]
${check}             //a-checkbox a-checkbox-fancy s-navigation-checkbox aok-float-left[@id="p_90/6741117031"]
${Search_Button}     //*[@id="nav-search-submit-button"]
${searchResultURL}   https://www.amazon.in/s?k=shoes&rh=p_90%3A6741117031&dc&ds=v1%3AHPjd0UYRr2jpK9TZTPSfbBj3XuxWj7xRPOgIoQnwUQI&qid=1706618545&rnid=6741116031&ref=sr_nr_p_90_1
${window_handles}    Get Window Handles