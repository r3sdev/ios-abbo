//
//  ContentView.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 23/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var subscriptions: Subscriptions
    @State var showAdd = false
    
    var body: some View {
        
        VStack {

            Header()
            SubscriptionList()
            HStack {
                Spacer()
                Button(action: {
//                    self.subscriptions.add(name: "Test", amount: 10.00)
                    self.showAdd = !self.showAdd
                }, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                })
                Spacer()
            }
            .padding()
        }
        .sheet(isPresented: $showAdd) {
            AddSubscription(subscriptions: self.subscriptions)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
