//
//  Sum.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 22/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Sum: ExpressionProtocol {
    var addend: Money
    var augend: Money
    
    init(addend: Money, augend: Money) {
        self.addend = addend
        self.augend = augend
    }
    
    func reduce(_ to: String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount, currency: to)
    }
}
