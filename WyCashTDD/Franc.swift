//
//  Franc.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 21/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Franc: Money {
    
    // MARK: - Override
    
    override func times(_ multiplier: Int) -> Money {
        return Money.makeFranc(self.amount * multiplier)
    }
}
