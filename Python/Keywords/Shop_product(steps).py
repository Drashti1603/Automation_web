
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

def perform_checkout(add_to_cart_locator, go_to_cart_locator, checkout_locator):
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.click_element(add_to_cart_locator)
    selenium_lib.go_to(go_to_cart_locator)
    selenium_lib.click_element(checkout_locator)
