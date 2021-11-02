*** Settings ***
Library  SeleniumLibrary
Library  Fakerlibrary


*** Variables ***
${URL}                      https://stage.lumoa.me
${BROWSER}                  chrome
${EMAIL_FIELD}              name:email
${email}                    admintesti222@mailinator.com
${NEXT}                     xpath://*[@id="root"]/div/div/div[1]/div/div/form/button/span[1]
${PASSWORD_FIELD}           name:password
${password}                 2Strong!
${LOGIN_BUTTON}             xpath://*[@id="root"]/div/div/div[1]/div/div/form/button/span[1]
${KEBAB_MENU}               class:Sidemenu-group
${C22_dashboard}            xpath:/html/body/div[3]/div[3]/div/div[2]/div
${NEW_CARD_COLLECTION}      xpath://*[@id="root"]/div/div/div[3]/div/div/div[1]/div[2]/div[2]/div/div[2]
${SAMPLE_STATS}             xpath://*[@id="root"]/div/div/div[3]/div/div[2]/div/div/div/div[2]/div[1]/div/div[1]/div[1]/div[2]/div/button[2]


*** Keywords ***
Navigate to Homepage
        Open Browser  ${URL}   ${BROWSER}
        Maximize Browser Window
        Set Browser Implicit Wait  5s

Login with Valid Credentials
        Click Element   ${EMAIL_FIELD}
        Input Text      ${EMAIL_FIELD}   ${email}
        Click Element   ${NEXT}
        Set Selenium Implicit Wait   10s
        Click Element   ${PASSWORD_FIELD}
        Input Text      ${PASSWORD_FIELD}     ${password}
        Click Element   ${LOGIN_BUTTON}

Assert Sucessful Login
        Page Should Contain  HOME

Select Card 222 on the Sidemenu
           Click Element   ${KEBAB_MENU}
           Set Selenium Implicit Wait   5s

Inpect Company84collection218
           Click Element   ${C22_dashboard}
           Set Selenium Implicit Wait  10s

Inspect Impact Page
           Click Element  ${NEW_CARD_COLLECTION}
           Page Should Contain  Topic impacts

Assert IMPACT page and data visible
            Click Element   ${SAMPLE_STATS}
            Page Should Contain  Insights by volume

