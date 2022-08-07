//
//  Gradients.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        
        VStack {
            
            LinearGradient(gradient: Gradient(colors: [.cyan, .purple]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            LinearGradient(gradient: Gradient(stops: [
                               Gradient.Stop(color: .yellow, location: 0.45), /// We can also use `.init`
                               Gradient.Stop(color: .orange, location: 0.55)
                           ]),
                           startPoint: .top,
                           endPoint: .bottom)
            
            RadialGradient(gradient: Gradient(colors: [.red, .black]), center: .center, startRadius: 20, endRadius: 200)
            
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            
        }
        // Navigation stack view title.
        .navigationTitle("Gradients")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
