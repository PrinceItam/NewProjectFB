*** Settings ***
Documentation  Creating New User Functionality
Resource  ../../../resources/facebookresource.robot

Suite Teardown   Close All Browsers




*** Test Cases ***
Verify new user creation functionality for facebook
    [Documentation]  This test case verifies basic new user creation
    [Tags]    Functional
        Create a New User
        Enter First name
        Enter Last name
        Enter email to create new user
        Enter Email
        Enter New Password
        Select User Birthday
        Select Gender
        Click on Sign Up


