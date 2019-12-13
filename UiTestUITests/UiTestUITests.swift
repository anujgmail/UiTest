//
//  UiTestUITests.swift
//  UiTestUITests
//
//  Created by Alok Pandey on 12/12/19.
//  Copyright © 2019 CBRE. All rights reserved.
//

import XCTest

class UiTestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {

        let app = XCUIApplication()
        app.launch()
        //sleep(2)
        app.buttons["Button"].tap()
        //sleep(2)
        app.buttons["Button2"].tap()
        //sleep(2)




        //sleep(1)
        // UI tests must launch the application that they test



        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testSecond() {
        let app = XCUIApplication()
        app.launch()
        //sleep(2)
        app.buttons["Button"].tap()
        //sleep(2)
        app.buttons["Button2"].tap()
        let asdf = app.textFields["textfield"]
        asdf.tap()
        asdf.typeText("asdfasfaasfasfasfa")
        app.buttons["Button3"].tap()
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
