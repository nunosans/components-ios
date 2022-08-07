//
//  Forms.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Forms: View {
    var body: some View {
        
        /// Forms wrap up elements in a list style.
        Form {
            
            Group {
                /// `Text` is a SwiftUI element.
                Text("A1")
                Text("A2")
                Text("A3")
                Text("A4")
                Text("A5")
                Text("A6")
            }
            
            Group {
                Text("B1")
                Text("B2")
                Text("B3")
                Text("B4")
                Text("B5")
                Text("B6")
            }
            
            Section {
                ForEach(0..<100) { number in
                    Text("Row \(number)")
                }
            } header: {
                Text("For Each")
            }
        }
        // Navigation stack view title.
        .navigationTitle("Forms")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
