//
//  UiTestUITests.swift
//  UiTestUITests
//
//  Created by Alok Pandey on 12/12/19.
//  Copyright © 2019 CBRE. All rights reserved.
//

import XCTest

class UiTestUITests: XCTestCase {

    private var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        app = nil
    }
    func testExample() {
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
