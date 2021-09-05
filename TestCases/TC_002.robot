*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/UserKeywords.robot

*** Variables ***
${var1}     https://www.ivoclarvivadent.com/en_US/shop/login?s=true&triggerLogin


*** Test Cases ***
TC_001 Login Logout Functonality
        Open Browser  ${var1}    Chrome
        ${row}=     Read Number of Rows     eins
        Log To Console    ${row}
        ${data}=    Read Excel Data of Cell    eins    2    2
        Log To Console    ${data}
        Maximize Browser Window
        Sleep    5 seconds
        #Click Element    //*[@id="gigya-login-form"]/div[2]/div[3]/div[1]/input
        #[placeholder='Email *']
        Input Text    //*[@id="gigya-login-form"]/div[2]/div[3]/div[1]/input   testing
        Input Text    //*[@id="gigya-login-form"]/div[2]/div[3]/div[2]/input    seavas123
        Click Button    //*[@id="gigya-login-form"]/div[2]/div[3]/div[4]/input
        #[value='Submit']
        Sleep    5 seconds



#: FOR  ${i}    IN RANGE     1