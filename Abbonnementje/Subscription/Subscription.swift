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
    init(name: String, amount: String) {
        let numberFormatter = NumberFormatter()
        numberFormatter.decimalSeparator = ","
        let _amount = numberFormatter.number(from: amount)?.doubleValue
        
        self.name = name
        self.amount = _amount ?? 0.00
    }
    
}
