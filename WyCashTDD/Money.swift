//
//  Money.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Money {
    var amount = 0
    
    func times(_ multiplier: Int) -> Money {
        preconditionFailure("Must be overridden in subclass")
    }
    
    static func makeDollar(_ amount: Int) -> Money {
        return Dollar(amount)
    }
    
    static func makeFranc(_ amount: Int) -> Money {
        return Franc(amount)
    }
}

// MARK: - Equatable
extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}
