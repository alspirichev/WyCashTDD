//
//  Money.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Money {
    var currency = ""
    var amount = 0
    
    init(_ amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    func times(_ multiplier: Int) -> Money {
        return Money(self.amount * multiplier, currency: self.currency)
    }
    
    func getCurrency() -> String {
        return self.currency
    }
    
    // MARK: - Factory methods
    
    static func makeDollar(_ amount: Int) -> Money {
        return Dollar(amount, currency: "USD")
    }
    
    static func makeFranc(_ amount: Int) -> Money {
        return Franc(amount, currency: "CHF")
    }
}

// MARK: - Equatable
extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
            && lhs.getCurrency() == rhs.getCurrency()
    }
}
