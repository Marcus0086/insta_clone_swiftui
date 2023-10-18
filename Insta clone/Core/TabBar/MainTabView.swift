//
//  MainTabView.swift
//  Insta clone
//
//  Created by Raghav Gupta on 18/10/23.
//

import SwiftUI

struct MainTabView: View {
    
    @State var tabSelection = 0
    var body: some View {
        TabView {
            Text("Feed").tabItem {
                Image(systemName: "house")
            }
            
            Text("Search").tabItem {
                Image(systemName: "magnifyingglass")
            }
            
            Text("Upload post").tabItem {
                Image(systemName: "plus.square")
            }
            
            Text("Notifications").tabItem {
                Image(systemName: "heart")
            }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
        .animation(.easeInOut, value: tabSelection)
        .transition(.slide)
        
    }
}

#Preview {
    MainTabView()
}
