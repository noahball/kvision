//
//  Notice.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import Foundation

struct Notice: Identifiable {
    let id: UUID
    let type: String
    let level: String
    let subject: String
    let description: String
    let teacher: String
    let placeMeet: String
    let dateMeet: String
    let timeMeet: String
    
    init(id: UUID = UUID(), type: String, level: String, subject: String, description: String, teacher: String, placeMeet: String, dateMeet: String, timeMeet: String) {
        self.id = id
        self.type = type
        self.level = level
        self.subject = subject
        self.description = description
        self.teacher = teacher
        self.placeMeet = placeMeet
        self.dateMeet = dateMeet
        self.timeMeet = timeMeet
    }
}

extension Notice {
    static let SampleData: [Notice] =
    [
        Notice(type: "Meeting", level: "Secondary (Years 9-13)", subject: "Football 14/15 Grade Training", description: "13/15 grade football training has been changed to Wednesday 3.30pm for this week ONLY", teacher: "LAN", placeMeet: "Football Fields", dateMeet: "Wed 21st June", timeMeet: "3.30pm"),
        Notice(type: "General", level: "ALL", subject: "Food Truck", description: "The food truck won't be coming this week. It will return next week.", teacher: "LS", placeMeet: "", dateMeet: "", timeMeet: ""),
        Notice(type: "Meeting", level: "Junior (Years 7-10)", subject: "Levels Assembly", description: "Levels Assembly will be held in G2 tomorrow morning.", teacher: "OOS", placeMeet: "G2", dateMeet: "Tue 20th June", timeMeet: "8.40am"),
        Notice(type: "General", level: "ALL", subject: "Gym Toilets", description: "The Gym toilets are not to be used by students whose current class isn't in the gym building. Please use the H Block toilets instead.", teacher: "WAT", placeMeet: "", dateMeet: "", timeMeet: ""),
        Notice(type: "General", level: "Seniors (Years 11-13)", subject: "Careerwise", description: "Remember to logon to Careerwise to view some career options before we go to the Canvas Careers Expo next week.", teacher: "SMT", placeMeet: "", dateMeet: "", timeMeet: ""),
    ]
}
