*** Settings ***
Documentation  Test to verify that the user can login and access cards on the dashboard
Resource         ../../resources/Lumoa_User_Resource.robot
#Suite Teardown   Close All Browsers



*** Test Cases ***
Valid Login
        [Tags]  Functional Test
        Navigate to Homepage
        Login with Valid Credentials
        Assert Sucessful Login

Inpect Card on The Dashboard
    Select Card 222 on the Sidemenu
    Inpect Company84collection218
    Inspect Impact Page
    Assert IMPACT page and data visible
