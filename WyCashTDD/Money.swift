//
//  Money.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Money: ExpressionProtocol {
    private var currency = ""
    var amount = 0
    
    init(_ amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    func times(_ multiplier: Int) -> ExpressionProtocol {
        return Money(self.amount * multiplier, currency: self.currency)
    }
    
    func reduce(bank: Bank, to: String) -> Money {
        let rate = bank.rate(from: self.currency, to: to)
        return Money(self.amount / rate, currency: to)
    }
    
    func plus(_ money: ExpressionProtocol) -> ExpressionProtocol {
        return Sum(addend: money, augend: self)
    }
    
    func getCurrency() -> String {
        return self.currency
    }
    
    // MARK: - Factory methods
    
    static func makeDollar(_ amount: Int) -> Money {
        return Money(amount, currency: "USD")
    }
    
    static func makeFranc(_ amount: Int) -> Money {
        return Money(amount, currency: "CHF")
    }
}

// MARK: - Equatable
extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
            && lhs.getCurrency() == rhs.getCurrency()
    }
}
