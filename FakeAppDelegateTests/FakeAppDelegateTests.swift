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
        let (sut, loggerSpy) = makeSUT()
        XCTAssertEqual(loggerSpy.callCount, 0, "does not log when initiate")
        
        sut.simulateViewDidLoad()
        XCTAssertEqual(loggerSpy.callCount, 1, "log when view did load")
        
        sut.simulateViewWillAppear()
        XCTAssertEqual(loggerSpy.callCount, 2, "log again when view will appear")
    }
    
    private func makeSUT() -> (sut: ViewController, loggerSpy: LoggerSpy) {
        let loggerSpy = LoggerSpy()
        Logger.shared = loggerSpy
        let sut = ViewController()
        
        return (sut, loggerSpy)
    }
    
    class LoggerSpy: Logger {
        var callCount = 0
        override func log(_ message: String) {
            callCount += 1
        }
    }
}

private extension UIViewController {
    func simulateViewDidLoad() {
        loadViewIfNeeded()
    }
    
    func simulateViewWillAppear() {
        beginAppearanceTransition(true, animated: false)
        endAppearanceTransition()
    }
}
