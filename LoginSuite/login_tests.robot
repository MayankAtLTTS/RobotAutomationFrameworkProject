*** Settings ***
Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/RegisterationAndLoginPage.resource
Resource    ../Resource/Base/GlobalVariableResource.resource

Test Setup    Launch Browser
# Test Teardown    End Browser
*** Test Cases ***
TC1_Login
    Click Sign in
    Enter Email to Sign in    ${REGISTERED EMAIL ADDRESS}
    Enter Password to Sign in    ${REGISTERED PASSWORD}
    Click Submit Login
    Validate Successful Registration/Login