//
//  Expression.swift
//  WyCashTDD
//
//  Created by Alexander Spirichev on 22/09/2019.
//  Copyright © 2019 Alexander Spirichev. All rights reserved.
//

import Foundation

protocol ExpressionProtocol {
    func reduce(bank: Bank, to: String) -> Money
    func plus(_ money: ExpressionProtocol) -> ExpressionProtocol
    func times(_ multiplier: Int) -> ExpressionProtocol
}
