//
//  NoticesView.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import SwiftUI

struct NoticesView: View {
    let Notices: [Notice]
    var body: some View {
        NavigationStack {
                List {
                    Section(header: Text("Meeting Notices")) {
                        ForEach(Notices) { notice in
                            if(notice.type == "Meeting") {
                                NoticeCardView(NoticeInfo: notice)
                            }
                        }
                    }
                    Section(header: Text("General Notices")) {
                        ForEach(Notices) { notice in
                            if(notice.type == "General") {
                                NoticeCardView(NoticeInfo: notice)
                            }
                        }
                    }
                .navigationTitle("Daily Notices")
            }
        }
    }
}

struct NoticesView_Previews: PreviewProvider {
    static var previews: some View {
        NoticesView(Notices: Notice.SampleData)
    }
}
