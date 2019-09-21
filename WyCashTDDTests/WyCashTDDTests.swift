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
    
    func test_equality() {
        XCTAssertTrue(Dollar(5).equals(Dollar(5)))
        XCTAssertFalse(Dollar(5).equals(Dollar(6)))
    }

}
