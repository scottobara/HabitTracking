//
//  ContentView.swift
//  HabitTracking
//
//  Created by Scott Obara on 31/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
//            Color.orange.tabItem {
//                Image(systemName: "goforward.plus")
//                Text("Home") // Text("Track")
//            }
            HabitsView().tabItem {
                Image(systemName: "list.bullet")
                Text("Habits")
            }
            Color.red.tabItem {
                Image(systemName: "gearshape")
                Text("Settings")
            }
        }
        //.edgesIgnoringSafeArea(.top)
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
