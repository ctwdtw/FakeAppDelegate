//
//  FakeAppDelegateTests.swift
//  FakeAppDelegateTests
//
//  Created by Paul Lee on 2021/9/4.
//

import XCTest
@testable import FakeAppDelegate

class FakeAppDelegateTests: XCTestCase {
    func test_first_unit_testing() {
        print("first unit testing done.")
    }
    
    func test_logViewLifeCycle() {
        let loggerSpy = LoggerSpy()
        Logger.shared = loggerSpy
        let sut = ViewController()
        
        XCTAssertEqual(loggerSpy.callCount, 0, "does not log when initiate")
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(loggerSpy.callCount, 1, "log when view did load")
        
        sut.beginAppearanceTransition(true, animated: false)
        sut.endAppearanceTransition()
        
        XCTAssertEqual(loggerSpy.callCount, 2, "log again when view will appear")
    }
    
    class LoggerSpy: Logger {
        var callCount = 0
        override func log(_ message: String) {
            callCount += 1
        }
    }
}
