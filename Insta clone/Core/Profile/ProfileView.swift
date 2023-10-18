//
//  ProfileView.swift
//  Insta clone
//
//  Created by Raghav Gupta on 19/10/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2)
    ]
    
    private let images: [String] = [
        "pat", "andrew", "anthony",
        "cederic", "spacex", "meiying",
        "pat", "andrew", "anthony",
        "cederic", "spacex", "meiying",
        "pat", "andrew", "anthony",
        "cederic", "spacex", "meiying",
        "pat", "andrew", "anthony",
        "cederic", "spacex", "meiying",
        "pat", "andrew", "anthony",
        "cederic", "spacex", "meiying"
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                HStack {
                    Image("spacex")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        ProfileInsightsView(number: 30, subHeading: "Posts")
                        
                        ProfileInsightsView(number: 3000, subHeading: "Followers")
                        
                        ProfileInsightsView(number: 2, subHeading: "Following")
                    }
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 4) {
                    ProfileTextView(text: "Marcus", fontWeight: .semibold)
                    ProfileTextView(text: "Avg Sanatani")
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.horizontal)
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.black, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
                }
                
                Divider()
                
            }
            
            LazyVGrid(columns: gridItems, spacing: 2) {
                ForEach(0 ..< images.count, id: \.self){
                    index in Image(images[index])
                        .resizable()
                        .scaledToFill()
                }
            }
        }
    }
}

