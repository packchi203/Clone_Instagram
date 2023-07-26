//
//  MainTabView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 20/07/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem{
                    Image(systemName:"house")
                }
            
            SearchView()
                .tabItem{
                    Image(systemName:"magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem{
                    Image(systemName:"plus.square")
                        .renderingMode(.original)
                }
            
            Text("Notification")
                .tabItem{
                    Image(systemName:"heart")
                }
            
            CurrentUserProfileView()
                .tabItem{
                    Image(systemName:"person")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
