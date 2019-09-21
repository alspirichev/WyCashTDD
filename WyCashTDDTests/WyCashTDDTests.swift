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
        let five = Money.makeDollar(5)
        
        XCTAssertEqual(Money.makeDollar(10), five.times(2))
        XCTAssertEqual(Money.makeDollar(15), five.times(3))
    }
    
    func test_frankMultiplication() {
        let five = Franc(5)
        
        XCTAssertEqual(Money.makeFranc(10), five.times(2))
        XCTAssertEqual(Money.makeFranc(15), five.times(3))
    }
    
    func test_equality() {
        XCTAssertEqual(Money.makeDollar(5), Money.makeDollar(5))
        XCTAssertNotEqual(Money.makeDollar(5), Money.makeDollar(6))
        
        XCTAssertEqual(Money.makeFranc(5), Money.makeFranc(5))
        XCTAssertNotEqual(Money.makeFranc(5), Money.makeFranc(6))
        
        XCTAssertNotEqual(Money.makeDollar(5), Money.makeFranc(5))
    }

}
