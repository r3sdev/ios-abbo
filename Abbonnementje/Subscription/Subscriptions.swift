//
//  Subscriptions.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

final class Subscriptions: ObservableObject {
    @Published var data: [Subscription] = [];
    @Published var new: Subscription = Subscription(name: "", amount: "0,00")
    @Published var show: Bool = false
    
    /**
     * Add subscription
     */
    func add(name: String, amount: String) {
        data.append(
            Subscription(name: name, amount: amount)
        )
    }
    /**
     * Delete subscription
     */
    func delete(at offsets: IndexSet) {
        data.remove(atOffsets: offsets)
    }
    
}
