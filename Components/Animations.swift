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
    @State private var buttonOpacity = 5.0
    @State private var buttonFlipDegrees = 0.0
    @State private var buttonEnabled = true
    
    var body: some View {
        
        List {
            
            Section {
                
                Button("Tap me") {
                    buttonDegrees += 180
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .rotationEffect(.degrees(buttonDegrees))
                .animation(.default, value: buttonDegrees)
                .padding(50)
                .frame(maxWidth: .infinity)
                
            } header: {
                Text("Default implicit animation")
            } footer: {
                Text("We've added an `.animation` modifier to the view that listens to the button rotation property for changes. The `.default` implicit animation is here applied to `.rotationEffect()`. It uses a default animation and duration.")
            }
            
            Section {
                Button("Tap me") {
                    buttonScale.toggle()
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .scaleEffect(buttonScale ? 2 : 1.0)
                .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: buttonScale)
                .padding(50)
                .frame(maxWidth: .infinity)
            } header: {
                Text("Interpolating spring animation")
            } footer: {
                Text("Same as above, but with a custom interpolating spring animation applied to `.scaleEffect()`. Uses an stifness of 50 and damping of 1.")
            }
            
            Section {
                Button("") {
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
                .padding(50)
                .frame(maxWidth: .infinity)
                
            } header: {
                Text("On appear repeating animation")
            } footer: {
                Text("This animation runs automatically as the view is rendered using `.onAppear` instead of on tap. The animation is applied to a circle with a red stroke scaling it to double its size in an ease-in-ease-out curve and repeating forever.")
            }
            .onAppear {
                buttonRingScale = 2.0
            }

            Section {
                
                Stepper("Opacity:", value: $buttonOpacity.animation(), in: 1...10) /// Here we set the animation of the value, rather than on the view.
                Button("Opacity: \(buttonOpacity.formatted())") {
                    // Do nothing.
                }
                .padding(50)
                .background(.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .opacity(buttonOpacity / 10)
                .padding(50)
                .frame(maxWidth: .infinity)
            } header: {
                Text("Binding animations")
            } footer: {
                Text("Here we bind the animation to the stepper value change, rather than the view. It still causes the views that use that property to animate automatically.")
            }

            Section {
                Button("Tap me") {
                    withAnimation {
                        buttonFlipDegrees += 360
                    }
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(buttonFlipDegrees), axis: (x: 0, y: 1, z: 0))
                .padding(50)
                .frame(maxWidth: .infinity)
            } header: {
                Text("Explicit animations")
            } footer: {
                Text("Here we wrap the function that alters the button rotation degress in an `withAnimation` function.")
            }
            
            Section {
                Button("Tap me") {
                    buttonEnabled.toggle()
                }
                .frame(width: 120, height: 120)
                .background(buttonEnabled ? .red : .blue)
                .animation(.default, value: buttonEnabled)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: buttonEnabled ? 60 : 16))
                .animation(.interpolatingSpring(stiffness: 30, damping: 4), value: buttonEnabled)
                .padding(50)
                .frame(maxWidth: .infinity)
            } header: {
                Text("Animation stack")
            } footer: {
                Text("Here we add two different animation modifiers to our modifier stack. Each animation is unique and only animates the modifiers before it, up to the previous animation.")
            }
            
        }
        .buttonStyle(PlainButtonStyle()) /// Hides the tap highlight on items in the list.
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
