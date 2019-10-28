//
//  LabelTextField.swift
//  Abbonnementje
//
//  Created by R.M. de Vos on 28/10/2019.
//  Copyright © 2019 R.M. de Vos. All rights reserved.
//

import SwiftUI

struct LabelTextField : View {
    var label: String
    var placeholder: String
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label.uppercased())
                .font(.headline)
            TextField(placeholder, text: $value)
                .padding(.all, 25)
                .background(
                    Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
                        .cornerRadius(5.0)
            )
        }
        .padding(.all, 25)
    }
}

struct LabelTextField_Previews: PreviewProvider {
    @State static var value: String = "Value"
    static var previews: some View {
        LabelTextField(label: "Name", placeholder: "Enter subscription name", value: $value)
    }
}
