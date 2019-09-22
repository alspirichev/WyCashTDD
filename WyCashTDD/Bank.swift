//
//  Bank.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 22/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

class Bank {
    typealias Pair = [String: String]
    private var rates: [Pair: Int] = [:]
    
    func rate(from: String, to: String) -> Int {
        if from == to {
            return 1
        }
        
        let pair = [from: to]
        return self.rates[pair]!
    }
    
    func addRate(from: String, to: String, rate: Int) {
        let pair = [from: to]
        self.rates[pair] = rate
    }
    
    func reduce(source: ExpressionProtocol, to: String) -> Money {
        return source.reduce(bank: self, to: to)
    }
}
