//
//  Stacks.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        
        HStack() {
            VStack() {
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "xmark")
            }
            VStack() {
                Image(systemName: "circle")
                Image(systemName: "xmark")
                Image(systemName: "circle")
            }
            VStack() {
                Image(systemName: "xmark")
                Image(systemName: "circle")
                Image(systemName: "circle")
            }
        }
        
        // Navigation stack view title.
        .navigationTitle("Stacks")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
