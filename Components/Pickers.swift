//
//  Pickers.swift
//  Components
//
//  Created by Nuno Miguel Coelho Santos on 27/07/2022.
//

import SwiftUI

struct Pickers: View {
    
    /// This is an array of options that will not change, and a selected student property that will change.
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    /// To save the tip percentage
    @State private var tipPercentage = 20
    
    /// For the date picker.
    @State private var seletedDate = Date.now
    
    var body: some View {
        
        Form {
            
            Section {
                /// `Pickers` need to live inside a `NavigationView` in order to show the options they hold.
                Picker("Select your student", selection: $selectedStudent) {
                    /// SwiftUI needs to be able to identify each unique view. So we need to pass an id to the loop.
                    /// `\.self` means that the String itself is unique.
                    /// If we have duplicate strings, we will get into problems using this solution.
                    ForEach(students, id: \.self) { student in
                        Text(student)
                    }
                }
            } header: {
                Text("Default Picker")
            } footer: {
                Text("This picker component automatically navigates to a view with all options that are selectable.")
            }
            
            Section {
                Picker("Tip percentage", selection: $tipPercentage) {
                    ForEach([0, 10, 15, 20, 25], id: \.self) { number in
                        Text(number, format: .percent)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Segmented Picker")
            } footer: {
                Text("This is a picker with the segmented style.")
            }
            
            Section {
                DatePicker("Set a reminder", selection: $seletedDate, in: Date.now...)
                DatePicker("Select date of birth", selection: $seletedDate, displayedComponents: .date)
                DatePicker("Set wake up time", selection: $seletedDate, displayedComponents: .hourAndMinute)
            } header: {
                Text("Date Picker")
            } footer: {
                Text("This is the default date picker. It binds to a stored state property. We can choose to hide the label with the `.labelIsHidden` modifier, but we must still define a label for accessibility. We can choose to show only date or only hours and mintues with the `displayedComponents` parameter. We can also specify an open range for the date value.")
            }
            
        }
        // Navigation stack view title.
        .navigationTitle("Pickers")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Pickers_Previews: PreviewProvider {
    static var previews: some View {
        // Added a NavigationView for the default picker to work.
        NavigationView {
            Pickers()
        }
    }
}
