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
    
    func test_equality() {
        XCTAssertEqual(Money.makeDollar(5), Money.makeDollar(5))
        XCTAssertNotEqual(Money.makeDollar(5), Money.makeDollar(6))
        XCTAssertNotEqual(Money.makeDollar(5), Money.makeFranc(5))
    }
    
    func test_currency() {
        XCTAssertEqual("USD", Money.makeDollar(1).getCurrency())
        XCTAssertEqual("CHF", Money.makeFranc(1).getCurrency())
    }
    
    func test_fiveDollarPlusFiveDollar_equalTenDollar() {
        let five = Money.makeDollar(5)
        let sum = five.plus(five)
        let bank = Bank()
        let reduced = bank.reduce(source: sum, to: "USD")
        XCTAssertEqual(Money.makeDollar(10), reduced)
    }

}
