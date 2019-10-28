//
//  Header.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct Header: View {
    @State private var showDetails = false
    
    @EnvironmentObject var subscriptions: Subscriptions
    
    var body: some View {
        
        HStack {
            Text(String(
                format: "€ %.02f",
                subscriptions.data
                    .reduce(0, {$0 + $1.amount}))
            )
                .font(.title)
            Spacer()
            Button(action: {
                self.showDetails.toggle()
            }) {
                Image(systemName: "info")
            }
        }
        .padding()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Header()
            Spacer()
        }

    }
}
