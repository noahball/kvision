//
//  ContentView.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TimetableView(TimetabledClasses: TimetabledClass.SampleData)
            .tabItem {
                Label("Timetable", systemImage: "calendar")
            }
            NoticesView(Notices: Notice.SampleData)
            .tabItem {
                Label("Daily Notices", systemImage: "exclamationmark.bubble")
            }
            DetailsView()
            .tabItem {
                Label("Details", systemImage: "person")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
