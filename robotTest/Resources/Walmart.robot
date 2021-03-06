*** Settings ***
Library  SeleniumLibrary
Library  /Users/sdodia/PycharmProjects/Automation/robotTest/Libraries/MyCustomLibrary.py
Resource  /Users/sdodia/PycharmProjects/Automation/robotTest/Resources/PO/ItemPage.robot
Resource  /Users/sdodia/PycharmProjects/Automation/robotTest/Resources/PO/HomePage.robot
Resource  /Users/sdodia/PycharmProjects/Automation/robotTest/Resources/PO/TopNav.robot

*** Keywords ***
Do Some Custom Things
    Do Something Special

Go to Item Page and select varient
    ItemPage.Load
    ItemPage.Varify Page Loaded
    Wait Until Page Contains  Great Value Taco Seasoning Mix, Original
    Click Element  xpath:/html/body/div[1]/div/div[1]/div/div[1]/div/div[2]/div/div/div[3]/div[4]/div[2]/div[1]/div/div/div/div[9]/div/div/div/div[2]/span[2]/div/div[1]/div[2]
    sleep  1s

Add to Cart and Go to Checkout
    Click Element  xpath:/html/body/div[1]/div/div[1]/div/div[1]/div/div[2]/div/div/div[3]/div[4]/div[2]/div[1]/div/div/div/div[11]/div/div/div/button/span/span
    sleep  2s
    Click Element  xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/button/span/span
    sleep  1s
    Click Element  xpath:/html/body/div[1]/div/div[1]/div/div[1]/div/div[1]/header/div/div[3]/div/div/div[3]/div/a/div/span[2]
    Wait Until Page Contains  Your cart: 1 item
    Click Element  xpath://*[@id="cart-root-container-content-skip"]/div/div/div[1]/div[2]/div/div/div[2]/div/div/button[1]/span
    Wait Until Page Contains  Sign in

Enter Username & password
    Input Text  id:sign-in-email  sdodia@walmartlabs.com
    Input Text  xpath:/html/body/div[1]/div/div[1]/div/div[1]/div[3]/div/div/div/div[1]/div/div/div/div/div[2]/div/div[1]/div/section/div/section/form/div[2]/div/div[1]/label/div[2]/div/input  urvashi5$
    sleep  2s

Search from Home Page
    HomePage.Load
    HomePage.Varify Page Loaded
    TopNav.Search for Products
    ${ReturnedInfo} =  Wait Until Page Contains  Bike Care Plans
    Log  ${ReturnedInfo}