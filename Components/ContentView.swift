//
//  ContentView.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

/// `View` is a SwiftUI protocol that holds most UI. Requires a `body`.
/// Saying: `Views` are a function of their state. This means that they exist to describe the state of our program.
struct ContentView: View {
    
    /// When we render the body, we must conform to a view.
    var body: some View {
        
        NavigationView {

            Form {
                Group {
                    NavigationLink("Alerts", destination: Alerts())
                    NavigationLink("Animations", destination: Animations())
                    NavigationLink("Buttons", destination: Buttons())
                    NavigationLink("Colors", destination: Colors())
                    // NavigationLink("Forms", destination: Forms())
                    NavigationLink("Gestures", destination: Gestures())
                    NavigationLink("Gradients", destination: Gradients())
                    NavigationLink("Materials", destination: Materials())
                    NavigationLink("Pickers", destination: Pickers())
                    NavigationLink("Stacks", destination: Stacks())
                }
                Group {
                    NavigationLink("Steppers", destination: Steppers())
                    NavigationLink("Text Fields", destination: TextFields())
                }
            }
            /// The title belongs to the child of the navigation view, not the `NavigationView` itself.
            .navigationTitle("Components")
            
        }
        
    }
}

/// The content view is just for debugging, showing a preview on the canvas on the right hand side.
/// Hint: Use ⌥⌘P to resume the preview.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
