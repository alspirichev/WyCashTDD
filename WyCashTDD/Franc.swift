//
//  Franc.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Franc {
    private var amount = 0
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Franc {
        return Franc(self.amount * multiplier)
    }
    
    func equals(_ franc: Franc) -> Bool {
        return self.amount == franc.amount
    }
}

extension Franc: Equatable {
    static func == (lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
}
