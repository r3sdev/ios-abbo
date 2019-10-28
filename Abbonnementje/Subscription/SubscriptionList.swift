//
//  SubscriptionList.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct SubscriptionList: View {
    @EnvironmentObject var subscriptions: Subscriptions
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Actief")) {
                    ForEach(subscriptions.data) { subscription in
                        SubscriptionRow(subscription: subscription)
                    }
                    .onDelete(perform: subscriptions.delete)
                }
            }
            .navigationBarTitle(Text("Abbonnementjes"))
        }
    }
}

struct SubscriptionList_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionList()
    }
}
