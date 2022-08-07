//
//  Materials.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Materials: View {
    var body: some View {
        
        VStack {
            
            ZStack {
                HStack(spacing: 0) {
                    Color.green
                    Color.yellow
                    Color.orange
                    Color.red
                    Color.purple
                    Color.cyan
                }
                Text("Ultra Thin Material")
                    .fontWeight(.semibold)
                    /// `.foregroundColor(.secondary)` /// Applies a flat secondary color.
                    .foregroundStyle(.secondary) /// Applies a secondary color with material effect.
                    .padding(25)
                    .background(.ultraThinMaterial)
                    .cornerRadius(25)
            }
            
            ZStack {
                HStack(spacing: 0) {
                    Color.green
                    Color.yellow
                    Color.orange
                    Color.red
                    Color.purple
                    Color.cyan
                }
                Text("Thin Material")
                    .fontWeight(.semibold)
                    /// `.foregroundColor(.secondary)` /// Applies a flat secondary color.
                    .foregroundStyle(.secondary) /// Applies a secondary color with material effect.
                    .padding(25)
                    .background(.thinMaterial)
                    .cornerRadius(25)
            }
            
            ZStack {
                HStack(spacing: 0) {
                    Color.green
                    Color.yellow
                    Color.orange
                    Color.red
                    Color.purple
                    Color.cyan
                }
                Text("Regular Material")
                    .fontWeight(.semibold)
                    /// `.foregroundColor(.secondary)` /// Applies a flat secondary color.
                    .foregroundStyle(.secondary) /// Applies a secondary color with material effect.
                    .padding(25)
                    .background(.regularMaterial)
                    .cornerRadius(25)
            }
            
            ZStack {
                HStack(spacing: 0) {
                    Color.green
                    Color.yellow
                    Color.orange
                    Color.red
                    Color.purple
                    Color.cyan
                }
                Text("Thick Material")
                    .fontWeight(.semibold)
                    /// `.foregroundColor(.secondary)` /// Applies a flat secondary color.
                    .foregroundStyle(.secondary) /// Applies a secondary color with material effect.
                    .padding(25)
                    .background(.thickMaterial)
                    .cornerRadius(25)
            }
            
            ZStack {
                HStack(spacing: 0) {
                    Color.green
                    Color.yellow
                    Color.orange
                    Color.red
                    Color.purple
                    Color.cyan
                }
                Text("Ultra Thick Material")
                    .fontWeight(.semibold)
                    /// `.foregroundColor(.secondary)` /// Applies a flat secondary color.
                    .foregroundStyle(.secondary) /// Applies a secondary color with material effect.
                    .padding(25)
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
            }
        }
        // Navigation stack view title.
        .navigationTitle("Materials")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Materials_Previews: PreviewProvider {
    static var previews: some View {
        Materials()
    }
}
