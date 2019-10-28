//
//  Subscriptions.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

final class Subscriptions: ObservableObject {
    @Published var data: [Subscription] = [
        Subscription(name: "test", amount: 1.00)
    ];
    
    /**
     * Add subscription
     */
    func add() {
        data.append(
            Subscription(name: "test", amount: 11.0)
        )
    }
    /**
     * Delete subscription
     */
    func delete(at offsets: IndexSet) {
        data.remove(atOffsets: offsets)
    }
}
