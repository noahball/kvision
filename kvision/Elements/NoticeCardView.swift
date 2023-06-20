//
//  NoticeCardView.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import SwiftUI

struct NoticeCardView: View {
    let NoticeInfo: Notice
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(NoticeInfo.teacher) - \(NoticeInfo.level)")
                    .font(.caption)
                Text(NoticeInfo.subject)
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                if(NoticeInfo.type == "Meeting") {
                    Text("\(NoticeInfo.placeMeet) (\(NoticeInfo.dateMeet) - \(NoticeInfo.timeMeet)")
                        .font(.caption)
                }
                    Spacer()
                        .frame(height: 8)
                Text(NoticeInfo.description)
            }
            .padding(8)
        }
    }
}

struct NoticeCardView_Previews: PreviewProvider {
    static var NoticeInfo = Notice.SampleData[0]
    static var previews: some View {
        NoticeCardView(NoticeInfo: NoticeInfo)
    }
}
