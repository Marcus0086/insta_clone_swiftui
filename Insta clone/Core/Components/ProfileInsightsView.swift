//
//  ProfileInsightsView.swift
//  Insta clone
//
//  Created by Raghav Gupta on 19/10/23.
//

import SwiftUI

struct ProfileInsightsView: View {
    var number: Int
    var subHeading: String = ""
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(subHeading)
                .font(.footnote)
        }
        .frame(width: 80)
    }
}
