//
//  CBRE_PulseUITests.swift
//  CBRE PulseUITests
//
//  Created by Alok Pandey on 17/12/19.
//  Copyright © 2019 CBRE. All rights reserved.
//

import XCTest

class CBRE_PulseUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testButtons() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.buttons["One"].tap()
        sleep(2)
        app/*@START_MENU_TOKEN@*/.staticTexts["Two"]/*[[".buttons[\"Two\"].staticTexts[\"Two\"]",".staticTexts[\"Two\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(2)
    }

    func testTextfield() {
        let app = XCUIApplication()
        app.launch()

        app.buttons["One"].tap()
        sleep(2)
        app/*@START_MENU_TOKEN@*/.staticTexts["Two"]/*[[".buttons[\"Two\"].staticTexts[\"Two\"]",".staticTexts[\"Two\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(2)



        let textField = app.textFields["TextField"]
        textField.tap()
        sleep(1)
        textField.typeText("ajsflkasjflsakfj ladskfj l")
        app/*@START_MENU_TOKEN@*/.staticTexts["Three"]/*[[".buttons[\"Three\"].staticTexts[\"Three\"]",".staticTexts[\"Three\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(2)


        app.alerts["Alert"].scrollViews.otherElements.buttons["Ok"].tap()
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
