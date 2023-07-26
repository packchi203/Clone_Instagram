//
//  FeedView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 20/07/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(Post.MOCK_POSTS){ post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
                
               
                Divider()
            }
            .background(Color.white)
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("instagram-logo-black")
                        .resizable()
                        .frame(width: 120,height: 50)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "heart")
                        .imageScale(.large)
                        
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
        
       
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
