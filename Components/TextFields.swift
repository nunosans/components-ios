//
//  TextFields.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct TextFields: View {
    
    /// This property holds state, and will be used later in the `TextField` as a two-way binding property.
    @State private var name = ""
    
    /// To modify in the currency text field.
    @State private var checkAmount = 0.0
    
    var body: some View {
        
        Form {
            Section {
                /// A `$` at the start of the property creates a two-way binding property.
                /// Changes to that property are written back to the data stored by the program.
                TextField("Enter your name", text: $name)
                /// Here we use the same property as above, without it being binding.
                Text("Your name is \(name)")
                /// Text Fields can also take in a value.
                /// As format, we can add currency and grab the code from the user Locale (optional).
                /// The format also prevents typing invalid content, like letters or emoji.
                TextField(
                    "Amount",
                    value: $checkAmount,
                    format: .currency(code: Locale.current.currencyCode ?? "USD")
                )
                .keyboardType(.decimalPad)
            } header: {
                Text("Text Field")
            }
        }
        
        // Navigation stack view title.
        .navigationTitle("Text Fields")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
