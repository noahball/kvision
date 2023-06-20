//
//  TimetableCardView.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import SwiftUI

struct TimetableCardView: View {
    let ClassInfo: TimetabledClass
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(ClassInfo.time)
                    .font(.caption)
                Text(ClassInfo.subject)
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                if(!ClassInfo.room.isEmpty || !ClassInfo.teacher.isEmpty) {
                    Spacer()
                        .frame(height: 8)
                    HStack {
                        Label(ClassInfo.room, systemImage: "location")
                            .accessibilityLabel("In \(ClassInfo.room)")
                            .labelStyle(.leadingIcon)
                        Spacer()
                            .frame(width: 20)
                        Label(ClassInfo.teacher, systemImage: "person")
                            .accessibilityLabel("Taught by \(ClassInfo.teacher)")
                            .labelStyle(.leadingIcon)
                    }
                    .font(.callout)
                }
            }
            .padding(8)
        }
    }
}

struct TimetableCardView_Previews: PreviewProvider {
    static var ClassInfo = TimetabledClass.SampleData[0]
    static var previews: some View {
        TimetableCardView(ClassInfo: ClassInfo)
    }
}
