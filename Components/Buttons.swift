//
//  Buttons.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Buttons: View {
    
    /// In a struct, we can't change its values freely, as they might be declared as an immutable constant.
    /// We also can't use the mutating keyword here. As we can't create mutating computed properties.
    /// So there is one special thing we can do. We can create a property wrapper.
    /// This allows this property to be stored somewhere else so that we can manipulate it freely.
    /// `@State` is for simple properties used in one view. They are discarded as the view is discarded.
    /// `private` is recommended for variables only used in that view scope.
    @State private var tapCount = 0
    
    var body: some View {
        
        ScrollView {
            
            Button("Tap Count: \(tapCount)") {
                tapCount += 1
            }
            .padding()
            .frame(maxWidth: .infinity)

            Group {
                
                Button("Destructive Button", role: .destructive) {}
                
                Button("Bordered Button") {}
                    .buttonStyle(.bordered)
                
                Button("Destructive Bordered Button", role: .destructive) {}
                    .buttonStyle(.bordered)
                
                Button("Prominent Button") {}
                    .buttonStyle(.borderedProminent)
                
                Button("Destructive Prominent Button", role: .destructive) {}
                    .buttonStyle(.borderedProminent)
                
                Button("Green Tinted Prominent Button") {}
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
            }
            .padding()
            
            Group {
                Button {
                    /// Action goes here.
                } label: {
                    Text("Custom button")
                        .foregroundColor(.primary)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(.yellow)
                        .cornerRadius(30)
                }
            }
            .padding()
            
            Group {
                
                Button {
                    /// Action goes here.
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
                
                Button {
                    /// Action goes here.
                } label: {
                    Image(systemName: "heart.fill")
                        .padding()
                }
            }
            .padding()

            
        }
        // Navigation stack view title.
        .navigationTitle("Buttons")
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
