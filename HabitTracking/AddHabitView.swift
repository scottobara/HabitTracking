//
//  AddHabitView.swift
//  HabitTracking
//
//  Created by Scott Obara on 31/1/21.
//

import SwiftUI

struct AddHabitView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name = ""
    @State private var description = ""
    @State private var durationSelected = 1
    @State private var countPerDuration = 1
    
    static let duration = ["Daily", "Weekly", "Monthly", "Annually"]
    static let durationUnit = ["day", "week", "month", "year"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Habit")) {
                    TextField("Name", text: $name)
                    //TextField("Description", text: $description)
                    //TextEditor(text: $description)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Goal")) {
                    Picker("type", selection: $durationSelected) {
                        ForEach(0 ..< AddHabitView.duration.count) {
                            Text("\(AddHabitView.duration[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Stepper(value: $countPerDuration, in: 1...100) {
                        Text("\(countPerDuration) / \(AddHabitView.durationUnit[durationSelected])")
                            //.foregroundColor(.secondary)
                    }
                }
                
            }
            .navigationTitle("New Habit")
            .navigationBarItems(leading: Button("Cancel") {
                self.presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct AddHabitView_Previews: PreviewProvider {
    static var previews: some View {
        AddHabitView()
    }
}
