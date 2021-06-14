//
//  ContentView.swift
//  News App Testing
//
//  Created by Sathriyan on 05/06/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            DiscoverView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Discover")
                }
            
            BookmarkView()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmarks")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
