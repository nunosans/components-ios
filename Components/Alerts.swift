//
//  Alerts.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Alerts: View {
    
    /// We don't trigger an alert. We create an alert, and a set conditions for which it should be presented.
    /// Alerts are a function of the UI state.
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("Show Alert") {
            showingAlert = true
        }
        /// Here we're saying that there's an alert in this piece of UI,  and the condition for displaying it.
        /// `$showingAlert` will be set to `false` when the alert is dismissed, but the press of any button.
        .alert("Alert", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Alerts are displayed in the UI automatically when a condition is met. Pressing any button sets that condition back to false automatically.")
        }
        // Navigation stack view title.
        .navigationTitle("Alerts")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
