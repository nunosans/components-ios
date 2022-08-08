//
//  Animations.swift
//  Components
//
//  Created by Nuno Coelho Santos on 8/7/22.
//

import SwiftUI

struct Animations: View {
    @State private var buttonScale = false
    @State private var buttonDegrees = 0.0
    @State private var buttonRingScale = 0.0
    @State private var buttonOpacity = 10.0
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Text("Default implicit animation")
                Button("Tap me") {
                    buttonDegrees += 180
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .rotationEffect(.degrees(buttonDegrees))
                .animation(.default, value: buttonDegrees)
                .padding()
                Text("The `.default` implicit animation is here applied to `.scaleEffect()`. It uses a default animation and duration.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            
            VStack {
                Text("Interpolating spring animation")
                Button("Tap me") {
                    buttonScale.toggle()
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .scaleEffect(buttonScale ? 2 : 1.0)
                .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: buttonScale)
                .padding()
                Text("Interpolating spring animation applied to `.scaleEffect()`. Uses an stifness of 50 and damping of 1.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            
            
            
            VStack {
                Text("On appear repeating animation")
                Button("Tap me") {
                    // Do nothing.
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.red)
                        .scaleEffect(buttonRingScale)
                        .opacity(2 - buttonRingScale)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: false), value: buttonRingScale)
                )
                .padding()
                Text("Tapping on this button does nothing. This animation scales a circle with a red stroke an ease-in-ease-out curve and repeats forever. ")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            .onAppear {
                buttonRingScale = 2.0
            }
            
            VStack {
                Stepper("Opacity:", value: $buttonOpacity.animation(), in: 1...10) /// Here we set the animation of the value, rather than on the view.
                Button("Opacity: \(buttonOpacity.formatted())") {
                    // Do nothing.
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .opacity(buttonOpacity / 10)
                .animation(.default, value: buttonOpacity)
                .padding()
            }
            .padding()
            
        }
        // Navigation stack view title.
        .navigationTitle("Animations")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
