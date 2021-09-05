//
//  FakeAppDelegateUITests.swift
//  FakeAppDelegateUITests
//
//  Created by Paul Lee on 2021/9/4.
//

import XCTest
@testable import FakeAppDelegate

class FakeAppDelegateUITests: XCTestCase {
    func test_ui_testing() {
        let app = XCUIApplication()
        app.launch()
    }
}
