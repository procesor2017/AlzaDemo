*** Settings ***
Resource                        ../Variables/search.robot

*** Keywords ***
Click on product
    [Arguments]                         ${FOUNDED_PRODUCT}
    # xpath: //*[contains(text(), "Samsung Galaxy S20+ černá")]
    ${final_xpath_for_product}=         Set Variable    ${SEARCHED_BY_NAME_START_XPATH}${FOUNDED_PRODUCT}${SEARCHED_BY_NAME_END_XPATH}
    Click element                       ${final_xpath_for_product}
    Wait Until Element Is Visible       ${PRODUCT_NAME}
    ${real_product_name}=               Get text    ${PRODUCT_NAME}
    Should Be Equal As Strings          ${real_product_name}   ${FOUNDED_PRODUCT}

