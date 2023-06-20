//
//  TimetableView.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import SwiftUI

struct TimetableView: View {
    let TimetabledClasses: [TimetabledClass]
    var body: some View {
        NavigationStack {
            List(TimetabledClasses) { TimetabledClass in
                TimetableCardView(ClassInfo: TimetabledClass)
            }
            .navigationTitle("Timetable")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "chevron.backward.circle")
                }
                .accessibilityLabel("Previous Day")
                Button(action: {}) {
                    Image(systemName: "chevron.forward.circle")
                }
                .accessibilityLabel("Next Day")
            }
        }
    }
}

struct TimetableView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableView(TimetabledClasses: TimetabledClass.SampleData)
    }
}
