//
//  ProfileTextView.swift
//  Insta clone
//
//  Created by Raghav Gupta on 19/10/23.
//

import SwiftUI

struct ProfileTextView: View {
    var text: String = ""
    var fontWeight: Font.Weight?
    var body: some View {
        Text(text)
            .font(.footnote)
            .fontWeight(fontWeight)
    }
}
