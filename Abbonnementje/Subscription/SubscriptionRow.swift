//
//  SubscriptionRow.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct SubscriptionRow: View {
    var subscription: Subscription

    var body: some View {
        HStack {
            Text(subscription.name).font(.headline)
            Spacer()
            Text(String(format: "€ %.02f", subscription.amount))
                .font(.subheadline)
        }
    }
}

struct SubscriptionRow_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionRow(subscription:
            Subscription(name: "Preview", amount: 0.00)
        )
    }
}
