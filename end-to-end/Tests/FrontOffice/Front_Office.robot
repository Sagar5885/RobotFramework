*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  /Users/sdodia/PycharmProjects/Automation/end-to-end/Resources/FrontOffice/FrontOfficeApp.robot
Resource  /Users/sdodia/PycharmProjects/Automation/end-to-end/Resources/Common/CommonWeb.robot
Resource  /Users/sdodia/PycharmProjects/Automation/end-to-end/Data/InputData.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/FrontOffice/Front_Office.robot

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  This is test 2
    [Tags]  test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page