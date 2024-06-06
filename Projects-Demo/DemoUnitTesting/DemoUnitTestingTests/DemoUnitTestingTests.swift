//
//  DemoUnitTestingTests.swift
//  DemoUnitTestingTests
//
//  Created by Hitesh Sharma - Vendor on 07/06/24.
//

import XCTest
@testable import DemoUnitTesting

final class DemoUnitTestingTests: XCTestCase {
    
    var calculator: Calculator!

    override func setUpWithError() throws {
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        
        calculator = nil
    }
    
    func testAddition() throws {
        XCTAssertEqual(calculator.add(1, 1), 2)
        XCTAssertEqual(calculator.add(-1, -1), -2)
        XCTAssertEqual(calculator.add(10, 10), 20)
    }
    
    func testSubstraction() throws {
        XCTAssertEqual(calculator.substract(2, 1), 1)
        XCTAssertEqual(calculator.substract(-1, -1), 0)
        XCTAssertEqual(calculator.substract(10, 5), 5)
    }
    
    func testMultiply() throws {
        XCTAssertEqual(calculator.multiply(10, 2), 20)
        XCTAssertEqual(calculator.multiply(-1, -1), 1)
        XCTAssertEqual(calculator.multiply(10, 10), 100)
    }
    
    func testDivisiob() throws {
        XCTAssertEqual(calculator.division(1, 1), 1)
        XCTAssertEqual(calculator.division(4, 2), 2)
        XCTAssertEqual(calculator.division(100, 10), 10)
    }

}
