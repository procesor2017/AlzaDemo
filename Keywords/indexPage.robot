*** Settings ***
Resource                        ../Variables/index.robot

*** Keywords ***
Find Product
    [Arguments]                             ${product}
    Input text                              ${SEARCH}    ${product}
    Click element                           ${SEARCH_BUTTON}
    Wait Until Element Is Visible           ${SEARCH_TITLE}

Click on drogery
    Click element                           ${DROGERY}

