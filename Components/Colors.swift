//
//  Colors.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        
        VStack {
            
            ZStack {
                Color.primary
                Text("Primary Color")
                    .foregroundColor(.accentColor)
                    .fontWeight(.semibold)
            }
            
            ZStack {
                Color.secondary
                Text("Secondary Color")
                    .foregroundColor(.primary)
                    .fontWeight(.semibold)
            }
            
            ZStack {
                Color.accentColor
                Text("Accent Color")
                    .fontWeight(.semibold)
            }
            
            ZStack {
                /// This `Color` element is a view in itself that fills the entire available area.
                Color.green /// Appears below.
                Text("Color Green") /// Appears on top.
                    .foregroundColor(.white) /// Applies color to the text element.
                    .fontWeight(.semibold)
            }
            
            ZStack {
                /// This `Color` element is a view in itself that fills the entire available area.
                Color(UIColor(red: 0.53, green: 0.59, blue: 0.67, alpha: 1.00)) /// Appears below.
                Text("Custom UI Color 0.53, 0.59, 0.67") /// Appears on top.
                    .foregroundColor(.white) /// Applies color to the text element.
                    .fontWeight(.semibold)
            }
            
        }
        // Navigation stack view title.
        .navigationTitle("Colors")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
