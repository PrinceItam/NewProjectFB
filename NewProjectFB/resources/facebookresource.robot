*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://facebook.com/
${BROWSER}        chrome
${CREATE_NEW_USER}  id:u_0_2_uu
${USER_FIRSTNAME}    name:firstname
${USER_LASTNAME}    name:lastname
${USER_EMAIL}     id:u_b_g_uy
${USER_PASSWORD}    id:password:step_input
${USER_BIRTHMONTH}  id:Month
${USER_BIRTHDAY}     id:Day
${USER_BIRTHYEAR}  id:Year
${USER_GENDER}         id:u_b_2_GM
${SIGN_UP}          name:websubmit



*** Keywords ***
Create a New User
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait  10s
    #Wait Until Element is Visible  Xpath://*[@id="u_0_j_8/"]
    Click Button  xpath://*[@id="u_0_j_E1"]
    Click Element    ${CREATE_NEW_USER}

Enter First name
    ${FirstName}=    FakerLibrary.First Name Male
    log    ${FirstName}
    Set Test Variable    ${FirstName}
    Wait Until Element is Visible    ${CUSTOMER_FIRSTNAME}    6s
    Input Text    ${USER_FIRSTNAME}    ${FirstName}

Enter Last name
    ${LastName}=    FakerLibrary.Last Name Male
    log    ${LastName}
    Set Test Variable    ${LastName}
    Wait Until Element is Visible    ${CUSTOMER_LASTNAME}    6s
    Input Text    ${USER_LASTNAME}    ${LastName}

Enter email to create new user
    ${email}=    FakerLibrary.email
    log    ${email}
    Set Test Variable    ${email}
    Wait Until Element is Visible    ${USER_EMAIL}    4s
    Input Text    ${USER_EMAIL}    ${email}

Enter Email
    ${Email}=  FakerLibrary.Email
    Log    ${Email}
    Set Test Variable    ${Email}
    Wait Until Element Is Visible    ${USER_EMAIL}     5s
    Input Text    ${USER_EMAIL}  ${Email}

Enter New Password
    ${Password}=  FakerLibrary.Password
    Log    ${Password}
    Set Test Variable    ${Password}
    Wait Until Element Is Visible    ${Password}    5s
    Input Text    ${USER_PASSWORD} ${Password}

Select User Birthday
    Select From List By Value    ${USER_BIRTHMONTH}    10
    Select From List By Value    ${USER_BIRTHDAY}       5
    Select From List By Value    ${USER_BIRTHYEAR}    1993

Select Gender
    Wait Until Element Is Visible    ${USER_GENDER}     3s
    Click Button    ${USER_GENDER}

Click on Sign Up
    Click Button    ${SIGN_UP}

Finish Testcase
    Close Browser
