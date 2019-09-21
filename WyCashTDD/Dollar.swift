//
//  Dollar.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Dollar: Money {
    
    init(_ amount: Int) {
        super.init()
        self.amount = amount
    }
    
    override func times(_ multiplier: Int) -> Money {
        print("Dollar test")
        return Dollar(self.amount * multiplier)
    }
}
