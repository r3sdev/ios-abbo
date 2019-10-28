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
            subscriptions.add(name: self.name, amount: self.amount)
            clearInput();
            close();
        }
        
    }
    
    func clearInput() {
        self.name = ""
        self.amount = ""
    }
    
    func close() {
        subscriptions.show = false
    }
    
    var body: some View {
        
        VStack {
            LabelTextField(
                label: "Name",
                placeholder: "Enter subscription name",
                value: $name
            )
            LabelNumberField(
                label: "Amount",
                placeholder: "Enter subscription amount",
                value: $amount
            )
            HStack {
                Button(action: add, label: {
                    Text("Add")
                })
                Button(action: close, label: {
                    Text("Cancel")
                })
            }
            Spacer()
        }
    }
}

struct AddSubscription_Previews: PreviewProvider {
    static let subscriptions: Subscriptions = Subscriptions()

    static var previews: some View {
        AddSubscription(subscriptions: self.subscriptions)
    }
}
