*** Settings ***
Library     ../TestData/ReadData.py

*** Keywords ***
Read Number of Rows
        [Arguments]     ${sheetname}
        ${maxr}=        Fetch Number Of Rows    eins
        [Return]        ${maxr}

Read Excel Data of Cell
        [Arguments]     ${sheetname}    ${row}      ${cell}
        ${celldata}=    Fetch Cell Data    ${sheetname}    ${row}      ${cell}
        [Return]        ${celldata}