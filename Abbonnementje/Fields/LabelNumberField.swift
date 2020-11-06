//
//  LabelNumberField.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct LabelNumberField : View {
    var label: String
    var placeholder: String
        
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label.uppercased())
                .font(.headline)
            TextField(placeholder, text: $value)
                .padding(.all, 25)
                .keyboardType(.decimalPad)
        }
        .padding(.all, 25)
    }
}

struct LabelNumberField_Previews: PreviewProvider {
    @State static var value: String = "10.00"
    static var previews: some View {
        LabelNumberField(label: "Name", placeholder: "Enter subscription name", value: $value)
    }
}
