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

    /*
    func test_miltiplication() {
        let five = Money.makeDollar(5)

        XCTAssertEqual(Money.makeDollar(10), five.times(2))
        XCTAssertEqual(Money.makeDollar(15), five.times(3))
    }
    */
    
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
    
    /*
    func test_plusOperation_returnSum() {
        let five = Money.makeDollar(5)
        let result = five.plus(five)
        
        let sum = result as! Sum
        
        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }
    */
    
    func test_reduceSum() {
        let sum = Sum(addend: Money.makeDollar(3),
                      augend: Money.makeDollar(4))
        
        let bank = Bank()
        let result = bank.reduce(source: sum, to: "USD")
        
        XCTAssertEqual(Money.makeDollar(7), result)
    }
    
    func test_reduceMoney() {
        let bank = Bank()
        let result = bank.reduce(source: Money.makeDollar(1), to: "USD")
        XCTAssertEqual(Money.makeDollar(1), result)
    }
    
    func test_reduceMoneyDifferentCurrency() {
        let bank = Bank()
        bank.addRate(from: "CHF", to: "USD", rate: 2)

        let result = bank.reduce(source: Money.makeFranc(2), to: "USD")

        XCTAssertEqual(Money.makeDollar(1), result)
    }
    
    func test_identityRate() {
        XCTAssertEqual(1, Bank().rate(from: "USD", to: "USD"))
    }
    
    func test_mixedAddition() {
        let fiveBucks: ExpressionProtocol = Money.makeDollar(5)
        let tenFrancs: ExpressionProtocol = Money.makeFranc(10)
        
        let bank = Bank()
        bank.addRate(from: "CHF", to: "USD", rate: 2)
        
        let result = bank.reduce(source: fiveBucks.plus(tenFrancs), to: "USD")
        
        XCTAssertEqual(Money.makeDollar(10), result)
    }
    
    func test_sumPlusMoney() {
        let fiveBucks: ExpressionProtocol = Money.makeDollar(5)
        let tenFrancs: ExpressionProtocol = Money.makeFranc(10)
        
        let bank = Bank()
        bank.addRate(from: "CHF", to: "USD", rate: 2)
        
        let sum = Sum(addend: fiveBucks, augend: tenFrancs).plus(fiveBucks)
        let result = bank.reduce(source: sum, to: "USD")
        
        XCTAssertEqual(Money.makeDollar(15), result)
    }
    
    func test_sumTimes() {
        let fiveBucks: ExpressionProtocol = Money.makeDollar(5)
        let tenFrancs: ExpressionProtocol = Money.makeFranc(10)
        
        let bank = Bank()
        bank.addRate(from: "CHF", to: "USD", rate: 2)
        
        let sum = Sum(addend: fiveBucks, augend: tenFrancs).times(2)
        
        let result = bank.reduce(source: sum, to: "USD")
        XCTAssertEqual(Money.makeDollar(20), result)
    }

}
