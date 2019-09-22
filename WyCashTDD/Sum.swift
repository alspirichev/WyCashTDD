//
//  Sum.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 22/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Sum: ExpressionProtocol {
    
    var addend: ExpressionProtocol
    var augend: ExpressionProtocol
    
    init(addend: ExpressionProtocol, augend: ExpressionProtocol) {
        self.addend = addend
        self.augend = augend
    }
    
    func reduce(bank: Bank, to: String) -> Money {
        let amount = augend.reduce(bank: bank, to: to).amount + addend.reduce(bank: bank, to: to).amount
        return Money(amount, currency: to)
    }
    
    func plus(_ money: ExpressionProtocol) -> ExpressionProtocol {
        preconditionFailure("Need to be implemented in future")
    }
}
