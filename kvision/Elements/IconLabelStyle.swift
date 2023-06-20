//
//  IconLabelStyle.swift
//  kvision
//
//  Created by Noah Ball on 20/06/23.
//

import SwiftUI

struct IconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}

extension LabelStyle where Self == IconLabelStyle {
    static var leadingIcon: Self { Self() }
}
