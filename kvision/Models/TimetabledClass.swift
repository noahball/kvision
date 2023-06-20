//
//  TimetabledClass.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import Foundation

struct TimetabledClass: Identifiable {
    let id: UUID
    let time: String
    let subject: String
    let room: String
    let teacher: String
    
    init(id: UUID = UUID(), time: String, subject: String, room: String, teacher: String) {
        self.id = id
        self.time = time
        self.subject = subject
        self.room = room
        self.teacher = teacher
    }
}

extension TimetabledClass {
    static let SampleData: [TimetabledClass] =
    [
        TimetabledClass(time: "Tutor Class - 8.40am", subject: "TUT", room: "5", teacher: "WEB"),
        TimetabledClass(time: "Period 1 - 9.00am", subject: "ENS", room: "27", teacher: "ROG"),
        TimetabledClass(time: "Period 2 - 9.50am", subject: "MAC", room: "40", teacher: "GRF"),
        TimetabledClass(time: "10.40", subject: "1st Break", room: "", teacher: ""),
        TimetabledClass(time: "Period 3 - 11.05am", subject: "PHY", room: "12", teacher: "FER"),
        TimetabledClass(time: "Period 4 - 11.55am", subject: "PHY", room: "12", teacher: "FER"),
        TimetabledClass(time: "12.45", subject: "2nd Break", room: "", teacher: ""),
        TimetabledClass(time: "Period 5 - 1.35", subject: "DRA", room: "G3", teacher: "OOS"),
        TimetabledClass(time: "Period 6 - 2.25", subject: "DRA", room: "G3", teacher: "OOS"),
    ]
}
