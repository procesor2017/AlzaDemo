*** Settings ***
Resource                        ../Variables/product.robot
*** Keywords ***
Check product page
    [Arguments]                             ${product_name}             ${product_description}      ${product_prize}
    Check Product Page is loaded
    Check If Product page has right value   ${product_name}             ${product_description}      ${product_prize}

Check Product Page is loaded
    Wait Until Element Is Visible           ${PRODUCT_NAME}
    Wait Until Element Is Visible           ${PRODUCT_PRICE}
    Wait Until Element Is Visible           ${PRODUCT_DESCRIPTIONS}

Check If Product page has right value
    [Arguments]                             ${want_product_name}             ${want_product_description}      ${want_product_prize}
    ${real_product_name}=                   Get text                    ${PRODUCT_NAME}
    Should Contain                          ${real_product_name}        ${want_product_name}

    ${real_product_price}=                  Get text                    ${PRODUCT_PRICE}
    Should Contain                          ${real_product_price}       ${want_product_prize}

    ${real_product_description}=            Get text                        ${PRODUCT_DESCRIPTIONS}
    Should Contain                          ${real_product_description}     ${want_product_description}