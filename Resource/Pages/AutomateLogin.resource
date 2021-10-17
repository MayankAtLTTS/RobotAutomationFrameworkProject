*** Settings ***
Documentation    Automating the whole login procedure. 
...    This function clicks on sign in and enters email and password 
...    stored in GlobalVariableResource and clicks on login.
...    This function doesnot Launch Browser or Close it.
Resource    ../Base/CommonFunctionality.resource
Resource    ../Base/GlobalVariableResource.resource
Resource    RegisterationAndLoginPage.resource
*** Keywords ***
Automate Login
    Click Sign in
    Enter Email to Sign in    ${REGISTERED EMAIL ADDRESS}
    Enter Password to Sign in    ${REGISTERED PASSWORD}
    Click Submit Login
    Validate Successful Registration/Login