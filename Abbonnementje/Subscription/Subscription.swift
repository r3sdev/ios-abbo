//
//  Subscription.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct Subscription: Identifiable {
    
    var id: String = UUID().uuidString

    let name: String
    let amount: Double
    
    /**
     * Initialize
     */
    init(name: String, amount: Double) {
        self.name = name
        self.amount = amount
    }
    
    /**
     * Converts an amount to a string
     */
    func converToCurrency(amount: Double) -> Decimal {
        return NSNumber(floatLiteral: amount).decimalValue
    }
}
