*** Settings ***
Documentation                   Tests for find some products
Library                         SeleniumLibrary
Library                         String
Resource                        Variables/basic.robot
Resource                        Keywords/indexPage.robot
Resource                        Keywords/searchPage.robot
Resource                        Keywords/productPage.robot
Resource                        Keywords/drogeryIndexPage.robot
Test Setup                      Start web-browser
Test Teardown                   Close web-browser

*** Test Cases ***
Find product
    [Tags]      Product   Search
    Find product            ${PRODUCT}
    Click on product        ${PRODUCT}
    Check product page      ${PRODUCT}      ${REAL_PRODUCT_DESC}    ${REAL_PRODUCT_PRICE}

Get to pampers Babies
    [Tags]      Drogerie    Product
    Click on drogery
    Click on Babies

Dummy test
    Log to console          Ahoj já nic netestuju ale jsem hustej

*** Keywords ***
Start web-browser
     Open Browser                ${URL}      ${BROWSER}
Close web-browser
    Close Browser
