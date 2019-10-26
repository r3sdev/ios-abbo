//
//  ContentView.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 23/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct Subscription: Identifiable {
    let id: Int
    let name: String
    let amount: Double
}

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

struct ContentView: View {
    @State private var showDetails = false

    @State var subscriptions = [
        Subscription(
            id: 1,
            name: "Internet",
            amount: 10.00
        )
    ]
    
    
    var body: some View {
        
        VStack {
            HStack {
                Text(String(format: "€ %.02f", self.subscriptions.reduce(0, {$0 + $1.amount}))).font(.title)
                Spacer()
                Button(action: {
                    self.showDetails.toggle()
                }) {
                    Image(systemName: "info")
                }
            }
            .padding()

            
            NavigationView {
                List {
                    Section(header: Text("Actief")) {
                        ForEach(self.subscriptions) { subscription in
                            SubscriptionRow(subscription: subscription)
                        }.onDelete(perform: deleteSubscription)
                    }
                }
                .navigationBarTitle(Text("Abbonnementjes"))
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: addSubscription, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                })
                Spacer()
            }
            .padding()
        }
    }
    /**
     * Add subscription
     */
    func addSubscription() {
        subscriptions
            .append(
                Subscription(id: 2, name: "test", amount: 11.0)
        )
    }
    /**
     * Delete subscription
     */
    func deleteSubscription(at offsets: IndexSet) {
        subscriptions.remove(atOffsets: offsets)
    }
    
    /**
     * Converts an amount to a string
     */
    func converToCurrency(amount: Double) -> Decimal {
        return NSNumber(floatLiteral: amount).decimalValue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
