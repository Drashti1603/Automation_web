# filter_and_cart_keywords.py
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

def input_prices_and_go(low_price_locator, high_price_locator, go_button_locator):
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.input_text(low_price_locator,'500')
    selenium_lib.input_text(high_price_locator,'1000')
    selenium_lib.click_element(go_button_locator)
