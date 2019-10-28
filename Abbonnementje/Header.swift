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
    
    func total() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        
        
        let _total = subscriptions.data.reduce(0, {$0 + $1.amount})
        let formattedAmount = numberFormatter.string(from: _total as NSNumber)
        
        return "\(formattedAmount!)"
    }
    
    var body: some View {
        
        HStack {
            Text("Total:")
            Spacer()
            Text(total())
                .font(.title)
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
