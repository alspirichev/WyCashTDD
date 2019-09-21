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
        
        var product = five.times(2)
        
        XCTAssertEqual(10, product!.amount)
        
        product = five.times(3)
        XCTAssertEqual(15, product!.amount)
    }

}
