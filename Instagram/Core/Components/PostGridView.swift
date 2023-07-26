//
//  PostGridView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import SwiftUI

struct PostGridView: View {
    let posts: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]

    private let imageDismension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
   
    
    var body: some View {
        //post grid view
        LazyVGrid(columns: gridItems, spacing: 1){
            ForEach(posts){ post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageDismension, height: imageDismension)
                    .clipped()
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(posts: Post.MOCK_POSTS)
    }
}
