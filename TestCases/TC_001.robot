*** Settings ***
Library     SeleniumLibrary


*** Variables ***
$(var1)     https://www.ivoclarvivadent.com/en_US/shop/login?s=true&triggerLogin


*** Test Cases ***
TC_001 Variable Test
    ${Var1}=     Set Variable HelloIvo
    Log To Console    ${Var1}


*** Keywords ***
