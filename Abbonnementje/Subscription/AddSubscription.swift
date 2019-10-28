//
//  AddSubscription.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct AddSubscription: View {
    @State private var name = ""
    @State private var amount = ""
    
    var subscriptions: Subscriptions
    
    func add() {
        print("Adding \(self.name) \(self.amount)")
        
        if (self.name != "" && self.amount != "") {
            subscriptions.add(name: self.name, amount: Double(self.amount) ?? 0.00)
            clearInput();
        }
        
    }
    
    func clearInput() {
        self.name = ""
        self.amount = ""
    }
    
    var body: some View {
        
        VStack {
            LabelTextField(label: "Name", placeholder: "Enter subscription name", value: $name)
            LabelTextField(label: "Amount", placeholder: "Enter subscription amount", value: $amount)
            Spacer()
            Button(action: add, label: {
                Text("Add")
            })
        }
    }
}

struct AddSubscription_Previews: PreviewProvider {
    static let subscriptions: Subscriptions = Subscriptions()

    static var previews: some View {
        AddSubscription(subscriptions: self.subscriptions)
    }
}
