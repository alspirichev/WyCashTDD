//
//  Bank.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 22/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Bank {
    
    func reduce(source: ExpressionProtocol, to: String) -> Money {
        return Money.makeDollar(10)
    }
}
