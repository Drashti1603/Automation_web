*** Settings ***
Library    SeleniumLibrary     timeout=5500

*** Variables ***
${Deliver_today}        https://www.amazon.in/s?k=shoes+asian&rh=n%3A1571283031%2Cp_89%3AASIAN&dc&ds=v1%3AotwcMt3yo16FdR0%2FG8RvfL8TBlz5MMwsYuw6I4iKEP4&crid=1FR4EOSWXARGQ&qid=1706692550&rnid=3837712031&sprefix=shoes+asian%2Caps%2C255&ref=sr_nr_p_89_1
${Low_price}            //*[@id="low-price"]
${High_price}           //*[@id="high-price"]
${Go}                   //*[@id="a-autoid-1"]
${All_dis}              https://www.amazon.in/s?k=shoes&i=shoes&rh=n%3A1571283031%2Cp_90%3A6741117031%2Cp_89%3AASIAN%2Cp_n_deal_type%3A26921226031&dc&ds=v1%3AMaIMcoFuwmH1YAZQDXLbWdnGbNwH%2FsJzL0p6pq3Qg3U&qid=1706678247&rnid=26921223031&ref=sr_nr_p_n_deal_type_1 
${Size}                 //*[p_n_size_browse-vebin/2022653031"]
${Product1}             //*[@data-csa-c-item-id="amzn1.asin.1.B07FS383T1"]
${Add_to_cart}          //*[@id="add-to-cart-button"]
${Go_to_cart}           https://www.amazon.in/cart?ref_=sw_gtc
${Check-out}            //*[@data-feature-id="proceed-to-checkout-action"]
${Sign-in}              //*[@id="createAccountSubmit"]
${Email}                //*[@id="ap_email"]
${Continue}             //*[@id="continue"]
${Password}             //*[@id="ap_password"]
${Sign-in-submit}       //*[@id="signInSubmit"]