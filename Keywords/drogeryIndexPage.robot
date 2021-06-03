*** Settings ***
Resource                        ../Variables/drogerIndexPage.robot

*** Keywords ***
Click on Babies
    Mouse over                      ${FOR_BABIES}
    Click on element in menu        ${PLENKY}
    Page Should Contain     ${POTREBY_NA_PREBALOVANI}

Click on element in menu
    [Arguments]     ${str}
    Mouse Down      xpath=//a[contains(.,'${str}')]
    Click Element   xpath=//a[contains(.,'${str}')]