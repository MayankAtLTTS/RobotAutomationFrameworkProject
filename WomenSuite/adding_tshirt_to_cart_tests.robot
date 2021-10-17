*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Resource    ../Resource/Pages/WomenPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser
*** Test Cases ***
TC3_Adding T-Shirt into Cart
    Automate Login
    
    Hover Over Menuitem Women
    Click Sub Menuitem T-Shirt
    
    Hover Over Dress
    Click More
    
    Enter Quantity    2
    Select Size of Dress    S
    Choose Color    14
    Click Add to Cart
    Validate Item added to cart Successful
    Click Continue Shopping