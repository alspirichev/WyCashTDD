//
//  Dollar.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Dollar {
    private var amount = 0
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        return Dollar(self.amount * multiplier)
    }
    
    func equals(_ dollar: Dollar) -> Bool {
        return self.amount == dollar.amount
    }
}

extension Dollar: Equatable {
    static func == (lhs: Dollar, rhs: Dollar) -> Bool {
        return lhs.amount == rhs.amount
    }
}
