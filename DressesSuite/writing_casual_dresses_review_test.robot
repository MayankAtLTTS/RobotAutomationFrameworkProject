*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Resource    ../Resource/Pages/DressesSuite.resource

Test Setup    Launch Browser
Test Teardown    End Browser
*** Test Cases ***
TC4_Writing_Casual_Dresses_Review
    Automate Login
    Hover Over Menuitem Dresses
    Click Sub Menuitem Casual Dresses
    Click List View
    Click More
    Click Write Review
    Enter Title of Review    title
    Enter Comment of Review    comment
    Click Send
    Validate New Comment Sent
    Click Ok Button