//
//  HabitsView.swift
//  HabitTracking
//
//  Created by Scott Obara on 31/1/21.
//

import SwiftUI

struct HabitsView: View {
    @State private var showingAddHabit = false
    
    var body: some View {
        NavigationView {
            List {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            .navigationBarItems(
                leading: Button(action: { print("hello")}) {
                    Text("Edit")
//                    Image(systemName: "pencil")
//                        .padding([.trailing, .top, .bottom])
                },
                trailing: Button(action: { self.showingAddHabit = true}) {
                    Image(systemName: "plus")
                        .padding([.leading, .top, .bottom])
                }
            )
            .navigationBarTitle("Habits")
            .sheet(isPresented: $showingAddHabit) {
                AddHabitView()
            
            }
        }
    }
}

struct HabitsView_Previews: PreviewProvider {
    static var previews: some View {
        HabitsView()
        //ContentView()
    }
}
