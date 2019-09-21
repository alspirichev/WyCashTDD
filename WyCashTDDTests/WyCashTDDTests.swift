//
//  WyCashTDDTests.swift
//  WyCashTDDTests
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import XCTest
@testable import WyCashTDD

class WyCashTDDTests: XCTestCase {

    func test_miltiplication() {
        let five = Dollar(5)
        
        XCTAssertEqual(Dollar(10), five.times(2))
        XCTAssertEqual(Dollar(15), five.times(3))
    }
    
    func test_frankMultiplication() {
        let five = Franc(5)
        
        XCTAssertEqual(Franc(10), five.times(2))
        XCTAssertEqual(Franc(15), five.times(3))
    }
    
    func test_equality() {
        XCTAssertEqual(Dollar(5), Dollar(5))
        XCTAssertNotEqual(Dollar(5), Dollar(6))
        
        XCTAssertEqual(Franc(5), Franc(5))
        XCTAssertNotEqual(Franc(5), Franc(6))
        
        XCTAssertNotEqual(Dollar(5), Franc(5))
    }

}
