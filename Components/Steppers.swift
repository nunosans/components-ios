//
//  Steppers.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Steppers: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Form  {
            Section {
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            } footer: {
                Text("This is a default stepper storing a Double, with a specified range between 4 and 12 in steps of 0.25.")
            }
        }
        // Navigation stack view title.
        .navigationTitle("Steppers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Steppers()
    }
}
